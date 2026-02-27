// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_capacity_provider_config/function_capacity_provider_config.dart';
import '../function_dead_letter_config/function_dead_letter_config.dart';
import '../function_durable_config/function_durable_config.dart';
import '../function_environment/function_environment.dart';
import '../function_ephemeral_storage/function_ephemeral_storage.dart';
import '../function_file_system_config/function_file_system_config.dart';
import '../function_image_config/function_image_config.dart';
import '../function_logging_config/function_logging_config.dart';
import '../function_snap_start/function_snap_start.dart';
import '../function_tenancy_config/function_tenancy_config.dart';
import '../function_tracing_config/function_tracing_config.dart';
import '../function_vpc_config/function_vpc_config.dart';

/// The set of arguments for Function.
class FunctionLambdaArgs {
  /// Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  final pulumi.Input<List<String>>? architectures;

  /// Configuration block for Lambda Capacity Provider. See below.
  final pulumi.Input<FunctionCapacityProviderConfig>? capacityProviderConfig;

  /// Path to the function's deployment package within the local filesystem. Conflicts with `image_uri` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  final pulumi.Input<dynamic>? code;

  /// Base64-encoded representation the source code package file. Use this argument to trigger updates when the function source code changes. For OCI, this value is relayed directly from the image digest. For zip files, this value is the Base64 encoded SHA-256 hash of the `.zip` file. Layers are not included in the calculation. To trigger updates using a non-standard hashing algorithm, use the `source_code_hash` argument instead.
  final pulumi.Input<String>? codeSha256;

  /// ARN of a code-signing configuration to enable code signing for this function.
  final pulumi.Input<String>? codeSigningConfigArn;

  /// Configuration block for dead letter queue. See below.
  final pulumi.Input<FunctionDeadLetterConfig>? deadLetterConfig;

  /// Description of what your Lambda Function does.
  final pulumi.Input<String>? description;

  /// Configuration block for durable function settings. See below. `durable_config` may only be available in [limited regions](https://builder.aws.com/build/capabilities), including `us-east-2`.
  final pulumi.Input<FunctionDurableConfig>? durableConfig;

  /// Configuration block for environment variables. See below.
  final pulumi.Input<FunctionEnvironment>? environment;

  /// Amount of ephemeral storage (`/tmp`) to allocate for the Lambda Function. See below.
  final pulumi.Input<FunctionEphemeralStorage>? ephemeralStorage;

  /// Configuration block for EFS file system. See below.
  final pulumi.Input<FunctionFileSystemConfig>? fileSystemConfig;

  /// Function entry point in your code. Required if `package_type` is `Zip`.
  final pulumi.Input<String>? handler;

  /// Container image configuration values. See below.
  final pulumi.Input<FunctionImageConfig>? imageConfig;

  /// ECR image URI containing the function's deployment package. Conflicts with `filename` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  final pulumi.Input<String>? imageUri;

  /// ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  final pulumi.Input<String>? kmsKeyArn;

  /// List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  final pulumi.Input<List<String>>? layers;

  /// Configuration block for advanced logging settings. See below.
  final pulumi.Input<FunctionLoggingConfig>? loggingConfig;

  /// Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  final pulumi.Input<int>? memorySize;

  /// Unique name for your Lambda Function.
  final pulumi.Input<String>? name;

  /// Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  final pulumi.Input<String>? packageType;

  /// Whether to publish creation/change as new Lambda Function Version. Defaults to `false`.
  final pulumi.Input<bool>? publish;

  /// Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  final pulumi.Input<String>? publishTo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  final pulumi.Input<bool>? replaceSecurityGroupsOnDestroy;

  /// List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replace_security_groups_on_destroy` is `true`.
  final pulumi.Input<List<String>>? replacementSecurityGroupIds;

  /// Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  final pulumi.Input<int>? reservedConcurrentExecutions;

  /// ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> role;

  /// Identifier of the function's runtime. Required if `package_type` is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
  final pulumi.Input<String>? runtime;

  /// S3 bucket location containing the function's deployment package. Conflicts with `filename` and `image_uri`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  final pulumi.Input<String>? s3Bucket;

  /// S3 key of an object containing the function's deployment package. Required if `s3_bucket` is set.
  final pulumi.Input<String>? s3Key;

  /// Object version containing the function's deployment package. Conflicts with `filename` and `image_uri`.
  final pulumi.Input<String>? s3ObjectVersion;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`.
  final pulumi.Input<bool>? skipDestroy;

  /// Configuration block for snap start settings. See below.
  final pulumi.Input<FunctionSnapStart>? snapStart;

  /// User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the `code_sha256` argument instead.
  final pulumi.Input<String>? sourceCodeHash;

  /// ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package. Conflicts with `image_uri`.
  final pulumi.Input<String>? sourceKmsKeyArn;

  /// Key-value map of tags for the Lambda function. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block for Tenancy. See below.
  final pulumi.Input<FunctionTenancyConfig>? tenancyConfig;

  /// Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  final pulumi.Input<int>? timeout;

  /// Configuration block for X-Ray tracing. See below.
  final pulumi.Input<FunctionTracingConfig>? tracingConfig;

  /// Configuration block for VPC. See below.
  final pulumi.Input<FunctionVpcConfig>? vpcConfig;

  FunctionLambdaArgs({
    this.architectures,
    this.capacityProviderConfig,
    this.code,
    this.codeSha256,
    this.codeSigningConfigArn,
    this.deadLetterConfig,
    this.description,
    this.durableConfig,
    this.environment,
    this.ephemeralStorage,
    this.fileSystemConfig,
    this.handler,
    this.imageConfig,
    this.imageUri,
    this.kmsKeyArn,
    this.layers,
    this.loggingConfig,
    this.memorySize,
    this.name,
    this.packageType,
    this.publish,
    this.publishTo,
    this.region,
    this.replaceSecurityGroupsOnDestroy,
    this.replacementSecurityGroupIds,
    this.reservedConcurrentExecutions,
    required this.role,
    this.runtime,
    this.s3Bucket,
    this.s3Key,
    this.s3ObjectVersion,
    this.skipDestroy,
    this.snapStart,
    this.sourceCodeHash,
    this.sourceKmsKeyArn,
    this.tags,
    this.tenancyConfig,
    this.timeout,
    this.tracingConfig,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architecturesValue = architectures;
    if (architecturesValue != null) {
      map['architectures'] = architecturesValue;
    }
    final capacityProviderConfigValue = capacityProviderConfig;
    if (capacityProviderConfigValue != null) {
      map['capacityProviderConfig'] = pulumi.Input.mapOptionalInputValue<
              FunctionCapacityProviderConfig, Map<String, dynamic>>(
          capacityProviderConfigValue, (value) => value.toMap());
    }
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final codeSha256Value = codeSha256;
    if (codeSha256Value != null) {
      map['codeSha256'] = codeSha256Value;
    }
    final codeSigningConfigArnValue = codeSigningConfigArn;
    if (codeSigningConfigArnValue != null) {
      map['codeSigningConfigArn'] = codeSigningConfigArnValue;
    }
    final deadLetterConfigValue = deadLetterConfig;
    if (deadLetterConfigValue != null) {
      map['deadLetterConfig'] = pulumi.Input.mapOptionalInputValue<
              FunctionDeadLetterConfig, Map<String, dynamic>>(
          deadLetterConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final durableConfigValue = durableConfig;
    if (durableConfigValue != null) {
      map['durableConfig'] = pulumi.Input.mapOptionalInputValue<
          FunctionDurableConfig,
          Map<String, dynamic>>(durableConfigValue, (value) => value.toMap());
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = pulumi.Input.mapOptionalInputValue<
          FunctionEnvironment,
          Map<String, dynamic>>(environmentValue, (value) => value.toMap());
    }
    final ephemeralStorageValue = ephemeralStorage;
    if (ephemeralStorageValue != null) {
      map['ephemeralStorage'] = pulumi.Input.mapOptionalInputValue<
              FunctionEphemeralStorage, Map<String, dynamic>>(
          ephemeralStorageValue, (value) => value.toMap());
    }
    final fileSystemConfigValue = fileSystemConfig;
    if (fileSystemConfigValue != null) {
      map['fileSystemConfig'] = pulumi.Input.mapOptionalInputValue<
              FunctionFileSystemConfig, Map<String, dynamic>>(
          fileSystemConfigValue, (value) => value.toMap());
    }
    final handlerValue = handler;
    if (handlerValue != null) {
      map['handler'] = handlerValue;
    }
    final imageConfigValue = imageConfig;
    if (imageConfigValue != null) {
      map['imageConfig'] = pulumi.Input.mapOptionalInputValue<
          FunctionImageConfig,
          Map<String, dynamic>>(imageConfigValue, (value) => value.toMap());
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final layersValue = layers;
    if (layersValue != null) {
      map['layers'] = layersValue;
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = pulumi.Input.mapOptionalInputValue<
          FunctionLoggingConfig,
          Map<String, dynamic>>(loggingConfigValue, (value) => value.toMap());
    }
    final memorySizeValue = memorySize;
    if (memorySizeValue != null) {
      map['memorySize'] = memorySizeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final packageTypeValue = packageType;
    if (packageTypeValue != null) {
      map['packageType'] = packageTypeValue;
    }
    final publishValue = publish;
    if (publishValue != null) {
      map['publish'] = publishValue;
    }
    final publishToValue = publishTo;
    if (publishToValue != null) {
      map['publishTo'] = publishToValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replaceSecurityGroupsOnDestroyValue = replaceSecurityGroupsOnDestroy;
    if (replaceSecurityGroupsOnDestroyValue != null) {
      map['replaceSecurityGroupsOnDestroy'] =
          replaceSecurityGroupsOnDestroyValue;
    }
    final replacementSecurityGroupIdsValue = replacementSecurityGroupIds;
    if (replacementSecurityGroupIdsValue != null) {
      map['replacementSecurityGroupIds'] = replacementSecurityGroupIdsValue;
    }
    final reservedConcurrentExecutionsValue = reservedConcurrentExecutions;
    if (reservedConcurrentExecutionsValue != null) {
      map['reservedConcurrentExecutions'] = reservedConcurrentExecutionsValue;
    }
    map['role'] = role;
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = runtimeValue;
    }
    final s3BucketValue = s3Bucket;
    if (s3BucketValue != null) {
      map['s3Bucket'] = s3BucketValue;
    }
    final s3KeyValue = s3Key;
    if (s3KeyValue != null) {
      map['s3Key'] = s3KeyValue;
    }
    final s3ObjectVersionValue = s3ObjectVersion;
    if (s3ObjectVersionValue != null) {
      map['s3ObjectVersion'] = s3ObjectVersionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final snapStartValue = snapStart;
    if (snapStartValue != null) {
      map['snapStart'] = pulumi.Input.mapOptionalInputValue<FunctionSnapStart,
          Map<String, dynamic>>(snapStartValue, (value) => value.toMap());
    }
    final sourceCodeHashValue = sourceCodeHash;
    if (sourceCodeHashValue != null) {
      map['sourceCodeHash'] = sourceCodeHashValue;
    }
    final sourceKmsKeyArnValue = sourceKmsKeyArn;
    if (sourceKmsKeyArnValue != null) {
      map['sourceKmsKeyArn'] = sourceKmsKeyArnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tenancyConfigValue = tenancyConfig;
    if (tenancyConfigValue != null) {
      map['tenancyConfig'] = pulumi.Input.mapOptionalInputValue<
          FunctionTenancyConfig,
          Map<String, dynamic>>(tenancyConfigValue, (value) => value.toMap());
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final tracingConfigValue = tracingConfig;
    if (tracingConfigValue != null) {
      map['tracingConfig'] = pulumi.Input.mapOptionalInputValue<
          FunctionTracingConfig,
          Map<String, dynamic>>(tracingConfigValue, (value) => value.toMap());
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = pulumi.Input.mapOptionalInputValue<FunctionVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionLambdaArgs.fromMap(Map<String, dynamic> map) {
    return FunctionLambdaArgs(
      architectures:
          pulumi.Input.asOptionalInput<List<String>>(map['architectures']),
      capacityProviderConfig:
          pulumi.Input.asOptionalInput<FunctionCapacityProviderConfig>(
              map['capacityProviderConfig']),
      code: pulumi.Input.asOptionalInput<dynamic>(map['code']),
      codeSha256: pulumi.Input.asOptionalInput<String>(map['codeSha256']),
      codeSigningConfigArn:
          pulumi.Input.asOptionalInput<String>(map['codeSigningConfigArn']),
      deadLetterConfig: pulumi.Input.asOptionalInput<FunctionDeadLetterConfig>(
          map['deadLetterConfig']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      durableConfig: pulumi.Input.asOptionalInput<FunctionDurableConfig>(
          map['durableConfig']),
      environment:
          pulumi.Input.asOptionalInput<FunctionEnvironment>(map['environment']),
      ephemeralStorage: pulumi.Input.asOptionalInput<FunctionEphemeralStorage>(
          map['ephemeralStorage']),
      fileSystemConfig: pulumi.Input.asOptionalInput<FunctionFileSystemConfig>(
          map['fileSystemConfig']),
      handler: pulumi.Input.asOptionalInput<String>(map['handler']),
      imageConfig:
          pulumi.Input.asOptionalInput<FunctionImageConfig>(map['imageConfig']),
      imageUri: pulumi.Input.asOptionalInput<String>(map['imageUri']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      layers: pulumi.Input.asOptionalInput<List<String>>(map['layers']),
      loggingConfig: pulumi.Input.asOptionalInput<FunctionLoggingConfig>(
          map['loggingConfig']),
      memorySize: pulumi.Input.asOptionalInput<int>(map['memorySize']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      packageType: pulumi.Input.asOptionalInput<String>(map['packageType']),
      publish: pulumi.Input.asOptionalInput<bool>(map['publish']),
      publishTo: pulumi.Input.asOptionalInput<String>(map['publishTo']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replaceSecurityGroupsOnDestroy: pulumi.Input.asOptionalInput<bool>(
          map['replaceSecurityGroupsOnDestroy']),
      replacementSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['replacementSecurityGroupIds']),
      reservedConcurrentExecutions: pulumi.Input.asOptionalInput<int>(
          map['reservedConcurrentExecutions']),
      role: pulumi.Input.asInput<String>(map['role']),
      runtime: pulumi.Input.asOptionalInput<String>(map['runtime']),
      s3Bucket: pulumi.Input.asOptionalInput<String>(map['s3Bucket']),
      s3Key: pulumi.Input.asOptionalInput<String>(map['s3Key']),
      s3ObjectVersion:
          pulumi.Input.asOptionalInput<String>(map['s3ObjectVersion']),
      skipDestroy: pulumi.Input.asOptionalInput<bool>(map['skipDestroy']),
      snapStart:
          pulumi.Input.asOptionalInput<FunctionSnapStart>(map['snapStart']),
      sourceCodeHash:
          pulumi.Input.asOptionalInput<String>(map['sourceCodeHash']),
      sourceKmsKeyArn:
          pulumi.Input.asOptionalInput<String>(map['sourceKmsKeyArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenancyConfig: pulumi.Input.asOptionalInput<FunctionTenancyConfig>(
          map['tenancyConfig']),
      timeout: pulumi.Input.asOptionalInput<int>(map['timeout']),
      tracingConfig: pulumi.Input.asOptionalInput<FunctionTracingConfig>(
          map['tracingConfig']),
      vpcConfig:
          pulumi.Input.asOptionalInput<FunctionVpcConfig>(map['vpcConfig']),
    );
  }
}
