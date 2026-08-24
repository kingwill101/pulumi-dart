import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

import 'models.dart';

/// Generic Dart function inputs implemented on AWS Lambda by
/// [AwsLambdaDartFunction].
class DartFunctionArgs {
  /// Shared source configuration for the deployed function.
  final DartFunctionSource source;

  /// Optional explicit Lambda function name.
  final pulumi.Input<String>? name;

  /// Lambda architecture.
  ///
  /// Defaults to `arm64`.
  final pulumi.Input<String>? architecture;

  /// Lambda memory size in MiB.
  ///
  /// Defaults to `128`.
  final pulumi.Input<int>? memorySize;

  /// Lambda timeout in seconds.
  ///
  /// Defaults to `5`.
  final pulumi.Input<int>? timeout;

  /// Environment variables exposed to the Lambda runtime.
  final pulumi.Input<Map<String, String>>? environment;

  /// Tags applied to created AWS resources where supported.
  final pulumi.Input<Map<String, String>>? tags;

  /// Optional HTTP endpoint settings for Lambda Function URL creation.
  final DartFunctionHttpArgs? http;

  const DartFunctionArgs({
    required this.source,
    this.name,
    this.architecture,
    this.memorySize,
    this.timeout,
    this.environment,
    this.tags,
    this.http,
  });
}

/// Validates AWS Lambda function arguments against the supported source modes.
void validateDartFunctionArgs(DartFunctionArgs args) {
  // All currently defined source variants are supported by the AWS adapter.
}

/// AWS Lambda implementation of the Dart FaaS model.
///
/// Supported source modes:
/// - [DartFunctionImageSource]: build and deploy from an ECR image
/// - [AwsLambdaS3Source]: deploy a prebuilt zip directly from AWS S3
/// - [DartFunctionArchiveSource]: stage an archive in S3 and deploy it
class AwsLambdaDartFunction extends pulumi.ComponentResource {
  /// ARN of the created Lambda function.
  late final pulumi.Output<String> functionArn;

  /// Resolved function name.
  late final pulumi.Output<String> functionName;

  /// Invoke ARN of the created Lambda function.
  late final pulumi.Output<String> invokeArn;

  /// Function URL when [DartFunctionArgs.http] is enabled.
  late final pulumi.Output<String?> functionUrl;

  /// Published container image URI when `source.image` is used.
  late final pulumi.Output<String?> imageUri;

  /// ECR repository URL when `source.image` is used.
  late final pulumi.Output<String?> repositoryUrl;

  AwsLambdaDartFunction(
    String name, {
    required DartFunctionArgs args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'dart:aws:faas:AwsLambdaDartFunction',
         name,
         const {},
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    validateDartFunctionArgs(args);

    final childCustomOptions = pulumi.CustomResourceOptions(parent: this);
    final childComponentOptions = pulumi.ComponentResourceOptions(parent: this);

    final normalizedName = name.replaceAll('_', '-');
    final lambdaName = args.name ?? '$normalizedName-fn'.input();
    final architecture = args.architecture ?? 'arm64'.input();
    final memorySize = args.memorySize ?? 128.input();
    final timeout = args.timeout ?? 5.input();

    final role = aws.iam.Role(
      '$name-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'lambda.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    aws.iam.RolePolicyAttachment(
      '$name-basic-exec-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: role.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole'
                .input(),
      ),
      options: childCustomOptions,
    );

    late final pulumi.Output<String?> resolvedImageUri;
    late final pulumi.Output<String?> resolvedRepositoryUrl;
    late final pulumi.Input<String> packageType;
    pulumi.Input<String>? zipBucket;
    pulumi.Input<String>? zipKey;
    pulumi.Input<String>? zipObjectVersion;
    pulumi.Input<String>? zipSourceCodeHash;
    pulumi.Input<String>? zipRuntime;
    pulumi.Input<String>? zipHandler;

    final source = args.source;
    if (source case DartFunctionImageSource sourceImage) {
      final repo = awsx.ecr.Repository(
        '$name-repo',
        args: awsx.ecr.RepositoryArgs(
          forceDelete: true.input(),
          tags: args.tags,
        ),
        options: childComponentOptions,
      );

      final defaultPlatform = architecture.toOutput().apply<String>(
        (value) => value == 'x86_64' ? 'linux/amd64' : 'linux/arm64',
      );
      final image = awsx.ecr.Image(
        '$name-image',
        args: awsx.ecr.ImageArgs(
          repositoryUrl: repo.url.apply<String>((value) => value!),
          context: sourceImage.context,
          dockerfile: sourceImage.dockerfile,
          platform: sourceImage.platform ?? defaultPlatform,
        ),
        options: childComponentOptions,
      );

      resolvedRepositoryUrl = repo.url;
      resolvedImageUri = image.imageUri;
      packageType = 'Image'.input();
    } else if (source case AwsLambdaS3Source sourceZip) {
      resolvedRepositoryUrl = pulumi.Output.create<String?>(null);
      resolvedImageUri = pulumi.Output.create<String?>(null);
      packageType = 'Zip'.input();
      zipBucket = sourceZip.bucket;
      zipKey = sourceZip.key;
      zipObjectVersion = sourceZip.objectVersion;
      zipSourceCodeHash = sourceZip.sourceCodeHash;
      zipRuntime = sourceZip.runtime ?? 'provided.al2023'.input();
      zipHandler = sourceZip.handler ?? 'bootstrap'.input();
    } else {
      final upload = source as DartFunctionArchiveSource;
      final objectKey = upload.objectName ?? '$normalizedName-fn.zip'.input();

      pulumi.Input<String> resolvedZipBucket;
      if (upload.bucketName != null) {
        resolvedZipBucket = upload.bucketName!;
      } else {
        final bucket = aws.s3.Bucket(
          '$name-zip-bucket',
          args: aws.s3.BucketArgs(forceDestroy: true.input(), tags: args.tags),
          options: childCustomOptions,
        );
        resolvedZipBucket = bucket.bucket;
      }

      final object = aws.s3.BucketObject(
        '$name-zip-object',
        args: aws.s3.BucketObjectArgs(
          bucket: resolvedZipBucket,
          key: objectKey,
          source: upload.archive,
          tags: args.tags,
        ),
        options: childCustomOptions,
      );

      resolvedRepositoryUrl = pulumi.Output.create<String?>(null);
      resolvedImageUri = pulumi.Output.create<String?>(null);
      packageType = 'Zip'.input();
      zipBucket = resolvedZipBucket;
      zipKey = object.key;
      zipObjectVersion = object.versionId;
      zipSourceCodeHash = null;
      zipRuntime = 'provided.al2023'.input();
      zipHandler = 'bootstrap'.input();
    }

    final function = aws.lambda.FunctionType(
      '$name-function',
      args: aws.lambda.FunctionArgs(
        name: lambdaName,
        role: role.arn,
        packageType: packageType,
        architectures: architecture.toOutput().apply<List<String>>(
          (value) => [value],
        ),
        memorySize: memorySize,
        timeout: timeout,
        environment: args.environment == null
            ? null
            : aws.lambda
                  .FunctionEnvironment(variables: args.environment)
                  .input(),
        tags: args.tags,
        imageUri: source is DartFunctionImageSource
            ? resolvedImageUri.apply<String>((value) => value!)
            : null,
        runtime: source is DartFunctionImageSource ? null : zipRuntime,
        handler: source is DartFunctionImageSource ? null : zipHandler,
        s3Bucket: source is DartFunctionImageSource ? null : zipBucket,
        s3Key: source is DartFunctionImageSource ? null : zipKey,
        s3ObjectVersion: source is DartFunctionImageSource
            ? null
            : zipObjectVersion,
        sourceCodeHash: source is DartFunctionImageSource
            ? null
            : zipSourceCodeHash,
      ),
      options: childCustomOptions,
    );

    final http = args.http ?? const DartFunctionHttpArgs();
    if (http.enabled) {
      final functionUrlResource = aws.lambda.FunctionUrl(
        '$name-url',
        args: aws.lambda.FunctionUrlArgs(
          functionName: function.name,
          authorizationType: http.authorizationType ?? 'NONE'.input(),
        ),
        options: childCustomOptions,
      );
      functionUrl = functionUrlResource.functionUrl.apply<String?>(
        (value) => value,
      );
    } else {
      functionUrl = pulumi.Output.create<String?>(null);
    }

    functionArn = function.arn;
    functionName = function.name;
    invokeArn = function.invokeArn;
    imageUri = resolvedImageUri;
    repositoryUrl = resolvedRepositoryUrl;

    registerOutputs({
      'functionArn': functionArn,
      'functionName': functionName,
      'invokeArn': invokeArn,
      'functionUrl': functionUrl,
      'imageUri': imageUri,
      'repositoryUrl': repositoryUrl,
    });
  }
}
