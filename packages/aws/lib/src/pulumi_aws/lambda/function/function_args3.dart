// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
class FunctionArgs3 {
  /// Instruction set architecture for your Lambda function. Valid values are `[<span pulumi-lang-nodejs=""x8664"" pulumi-lang-dotnet=""X8664"" pulumi-lang-go=""x8664"" pulumi-lang-python=""x86_64"" pulumi-lang-yaml=""x8664"" pulumi-lang-java=""x8664"">"x86_64"</span>]` and `["arm64"]`. Default is `[<span pulumi-lang-nodejs=""x8664"" pulumi-lang-dotnet=""X8664"" pulumi-lang-go=""x8664"" pulumi-lang-python=""x86_64"" pulumi-lang-yaml=""x8664"" pulumi-lang-java=""x8664"">"x86_64"</span>]`. Removing this attribute, function's architecture stays the same.
  final Input<List<String>>? architectures;

  /// Configuration block for Lambda Capacity Provider. See below.
  final Input<FunctionCapacityProviderConfig>? capacityProviderConfig;

  /// Path to the function's deployment package within the local filesystem. Conflicts with <span pulumi-lang-nodejs="`imageUri`" pulumi-lang-dotnet="`ImageUri`" pulumi-lang-go="`imageUri`" pulumi-lang-python="`image_uri`" pulumi-lang-yaml="`imageUri`" pulumi-lang-java="`imageUri`">`image_uri`</span> and <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>. One of <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>, <span pulumi-lang-nodejs="`imageUri`" pulumi-lang-dotnet="`ImageUri`" pulumi-lang-go="`imageUri`" pulumi-lang-python="`image_uri`" pulumi-lang-yaml="`imageUri`" pulumi-lang-java="`imageUri`">`image_uri`</span>, or <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span> must be specified.
  final Input<dynamic>? code;

  /// Base64-encoded representation the source code package file. Use this argument to trigger updates when the function source code changes. For OCI, this value is relayed directly from the image digest. For zip files, this value is the Base64 encoded SHA-256 hash of the `.zip` file. Layers are not included in the calculation. To trigger updates using a non-standard hashing algorithm, use the <span pulumi-lang-nodejs="`sourceCodeHash`" pulumi-lang-dotnet="`SourceCodeHash`" pulumi-lang-go="`sourceCodeHash`" pulumi-lang-python="`source_code_hash`" pulumi-lang-yaml="`sourceCodeHash`" pulumi-lang-java="`sourceCodeHash`">`source_code_hash`</span> argument instead.
  final Input<String>? codeSha256;

  /// ARN of a code-signing configuration to enable code signing for this function.
  final Input<String>? codeSigningConfigArn;

  /// Configuration block for dead letter queue. See below.
  final Input<FunctionDeadLetterConfig>? deadLetterConfig;

  /// Description of what your Lambda Function does.
  final Input<String>? description;

  /// Configuration block for durable function settings. See below. <span pulumi-lang-nodejs="`durableConfig`" pulumi-lang-dotnet="`DurableConfig`" pulumi-lang-go="`durableConfig`" pulumi-lang-python="`durable_config`" pulumi-lang-yaml="`durableConfig`" pulumi-lang-java="`durableConfig`">`durable_config`</span> may only be available in [limited regions](https://builder.aws.com/build/capabilities), including `us-east-2`.
  final Input<FunctionDurableConfig>? durableConfig;

  /// Configuration block for environment variables. See below.
  final Input<FunctionEnvironment>? environment;

  /// Amount of ephemeral storage (`/tmp`) to allocate for the Lambda Function. See below.
  final Input<FunctionEphemeralStorage>? ephemeralStorage;

  /// Configuration block for EFS file system. See below.
  final Input<FunctionFileSystemConfig>? fileSystemConfig;

  /// Function entry point in your code. Required if <span pulumi-lang-nodejs="`packageType`" pulumi-lang-dotnet="`PackageType`" pulumi-lang-go="`packageType`" pulumi-lang-python="`package_type`" pulumi-lang-yaml="`packageType`" pulumi-lang-java="`packageType`">`package_type`</span> is `Zip`.
  final Input<String>? handler;

  /// Container image configuration values. See below.
  final Input<FunctionImageConfig>? imageConfig;

  /// ECR image URI containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span> and <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>. One of <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>, <span pulumi-lang-nodejs="`imageUri`" pulumi-lang-dotnet="`ImageUri`" pulumi-lang-go="`imageUri`" pulumi-lang-python="`image_uri`" pulumi-lang-yaml="`imageUri`" pulumi-lang-java="`imageUri`">`image_uri`</span>, or <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span> must be specified.
  final Input<String>? imageUri;

  /// ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  final Input<String>? kmsKeyArn;

  /// List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  final Input<List<String>>? layers;

  /// Configuration block for advanced logging settings. See below.
  final Input<FunctionLoggingConfig>? loggingConfig;

  /// Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  final Input<int>? memorySize;

  /// Unique name for your Lambda Function.
  final Input<String>? name;

  /// Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  final Input<String>? packageType;

  /// Whether to publish creation/change as new Lambda Function Version. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? publish;

  /// Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  final Input<String>? publishTo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? replaceSecurityGroupsOnDestroy;

  /// List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if <span pulumi-lang-nodejs="`replaceSecurityGroupsOnDestroy`" pulumi-lang-dotnet="`ReplaceSecurityGroupsOnDestroy`" pulumi-lang-go="`replaceSecurityGroupsOnDestroy`" pulumi-lang-python="`replace_security_groups_on_destroy`" pulumi-lang-yaml="`replaceSecurityGroupsOnDestroy`" pulumi-lang-java="`replaceSecurityGroupsOnDestroy`">`replace_security_groups_on_destroy`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<List<String>>? replacementSecurityGroupIds;

  /// Amount of reserved concurrent executions for this lambda function. A value of <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  final Input<int>? reservedConcurrentExecutions;

  /// ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  ///
  /// The following arguments are optional:
  final Input<String> role;

  /// Identifier of the function's runtime. Required if <span pulumi-lang-nodejs="`packageType`" pulumi-lang-dotnet="`PackageType`" pulumi-lang-go="`packageType`" pulumi-lang-python="`package_type`" pulumi-lang-yaml="`packageType`" pulumi-lang-java="`packageType`">`package_type`</span> is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
  final Input<String>? runtime;

  /// S3 bucket location containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span> and <span pulumi-lang-nodejs="`imageUri`" pulumi-lang-dotnet="`ImageUri`" pulumi-lang-go="`imageUri`" pulumi-lang-python="`image_uri`" pulumi-lang-yaml="`imageUri`" pulumi-lang-java="`imageUri`">`image_uri`</span>. One of <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>, <span pulumi-lang-nodejs="`imageUri`" pulumi-lang-dotnet="`ImageUri`" pulumi-lang-go="`imageUri`" pulumi-lang-python="`image_uri`" pulumi-lang-yaml="`imageUri`" pulumi-lang-java="`imageUri`">`image_uri`</span>, or <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span> must be specified.
  final Input<String>? s3Bucket;

  /// S3 key of an object containing the function's deployment package. Required if <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span> is set.
  final Input<String>? s3Key;

  /// Object version containing the function's deployment package. Conflicts with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span> and <span pulumi-lang-nodejs="`imageUri`" pulumi-lang-dotnet="`ImageUri`" pulumi-lang-go="`imageUri`" pulumi-lang-python="`image_uri`" pulumi-lang-yaml="`imageUri`" pulumi-lang-java="`imageUri`">`image_uri`</span>.
  final Input<String>? s3ObjectVersion;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? skipDestroy;

  /// Configuration block for snap start settings. See below.
  final Input<FunctionSnapStart>? snapStart;

  /// User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the <span pulumi-lang-nodejs="`codeSha256`" pulumi-lang-dotnet="`CodeSha256`" pulumi-lang-go="`codeSha256`" pulumi-lang-python="`code_sha256`" pulumi-lang-yaml="`codeSha256`" pulumi-lang-java="`codeSha256`">`code_sha256`</span> argument instead.
  final Input<String>? sourceCodeHash;

  /// ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package. Conflicts with <span pulumi-lang-nodejs="`imageUri`" pulumi-lang-dotnet="`ImageUri`" pulumi-lang-go="`imageUri`" pulumi-lang-python="`image_uri`" pulumi-lang-yaml="`imageUri`" pulumi-lang-java="`imageUri`">`image_uri`</span>.
  final Input<String>? sourceKmsKeyArn;

  /// Key-value map of tags for the Lambda function. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for Tenancy. See below.
  final Input<FunctionTenancyConfig>? tenancyConfig;

  /// Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  final Input<int>? timeout;

  /// Configuration block for X-Ray tracing. See below.
  final Input<FunctionTracingConfig>? tracingConfig;

  /// Configuration block for VPC. See below.
  final Input<FunctionVpcConfig>? vpcConfig;

  FunctionArgs3({
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
      map['capacityProviderConfig'] = Input.mapOptionalInputValue<
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
      map['deadLetterConfig'] = Input.mapOptionalInputValue<
              FunctionDeadLetterConfig, Map<String, dynamic>>(
          deadLetterConfigValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final durableConfigValue = durableConfig;
    if (durableConfigValue != null) {
      map['durableConfig'] = Input.mapOptionalInputValue<FunctionDurableConfig,
          Map<String, dynamic>>(durableConfigValue, (value) => value.toMap());
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = Input.mapOptionalInputValue<FunctionEnvironment,
          Map<String, dynamic>>(environmentValue, (value) => value.toMap());
    }
    final ephemeralStorageValue = ephemeralStorage;
    if (ephemeralStorageValue != null) {
      map['ephemeralStorage'] = Input.mapOptionalInputValue<
              FunctionEphemeralStorage, Map<String, dynamic>>(
          ephemeralStorageValue, (value) => value.toMap());
    }
    final fileSystemConfigValue = fileSystemConfig;
    if (fileSystemConfigValue != null) {
      map['fileSystemConfig'] = Input.mapOptionalInputValue<
              FunctionFileSystemConfig, Map<String, dynamic>>(
          fileSystemConfigValue, (value) => value.toMap());
    }
    final handlerValue = handler;
    if (handlerValue != null) {
      map['handler'] = handlerValue;
    }
    final imageConfigValue = imageConfig;
    if (imageConfigValue != null) {
      map['imageConfig'] = Input.mapOptionalInputValue<FunctionImageConfig,
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
      map['loggingConfig'] = Input.mapOptionalInputValue<FunctionLoggingConfig,
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
      map['snapStart'] =
          Input.mapOptionalInputValue<FunctionSnapStart, Map<String, dynamic>>(
              snapStartValue, (value) => value.toMap());
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
      map['tenancyConfig'] = Input.mapOptionalInputValue<FunctionTenancyConfig,
          Map<String, dynamic>>(tenancyConfigValue, (value) => value.toMap());
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final tracingConfigValue = tracingConfig;
    if (tracingConfigValue != null) {
      map['tracingConfig'] = Input.mapOptionalInputValue<FunctionTracingConfig,
          Map<String, dynamic>>(tracingConfigValue, (value) => value.toMap());
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] =
          Input.mapOptionalInputValue<FunctionVpcConfig, Map<String, dynamic>>(
              vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionArgs3.fromMap(Map<String, dynamic> map) {
    return FunctionArgs3(
      architectures: Input.asOptionalInput<List<String>>(map['architectures']),
      capacityProviderConfig:
          Input.asOptionalInput<FunctionCapacityProviderConfig>(
              map['capacityProviderConfig']),
      code: Input.asOptionalInput<dynamic>(map['code']),
      codeSha256: Input.asOptionalInput<String>(map['codeSha256']),
      codeSigningConfigArn:
          Input.asOptionalInput<String>(map['codeSigningConfigArn']),
      deadLetterConfig: Input.asOptionalInput<FunctionDeadLetterConfig>(
          map['deadLetterConfig']),
      description: Input.asOptionalInput<String>(map['description']),
      durableConfig:
          Input.asOptionalInput<FunctionDurableConfig>(map['durableConfig']),
      environment:
          Input.asOptionalInput<FunctionEnvironment>(map['environment']),
      ephemeralStorage: Input.asOptionalInput<FunctionEphemeralStorage>(
          map['ephemeralStorage']),
      fileSystemConfig: Input.asOptionalInput<FunctionFileSystemConfig>(
          map['fileSystemConfig']),
      handler: Input.asOptionalInput<String>(map['handler']),
      imageConfig:
          Input.asOptionalInput<FunctionImageConfig>(map['imageConfig']),
      imageUri: Input.asOptionalInput<String>(map['imageUri']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      layers: Input.asOptionalInput<List<String>>(map['layers']),
      loggingConfig:
          Input.asOptionalInput<FunctionLoggingConfig>(map['loggingConfig']),
      memorySize: Input.asOptionalInput<int>(map['memorySize']),
      name: Input.asOptionalInput<String>(map['name']),
      packageType: Input.asOptionalInput<String>(map['packageType']),
      publish: Input.asOptionalInput<bool>(map['publish']),
      publishTo: Input.asOptionalInput<String>(map['publishTo']),
      region: Input.asOptionalInput<String>(map['region']),
      replaceSecurityGroupsOnDestroy:
          Input.asOptionalInput<bool>(map['replaceSecurityGroupsOnDestroy']),
      replacementSecurityGroupIds: Input.asOptionalInput<List<String>>(
          map['replacementSecurityGroupIds']),
      reservedConcurrentExecutions:
          Input.asOptionalInput<int>(map['reservedConcurrentExecutions']),
      role: Input.asInput<String>(map['role']),
      runtime: Input.asOptionalInput<String>(map['runtime']),
      s3Bucket: Input.asOptionalInput<String>(map['s3Bucket']),
      s3Key: Input.asOptionalInput<String>(map['s3Key']),
      s3ObjectVersion: Input.asOptionalInput<String>(map['s3ObjectVersion']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      snapStart: Input.asOptionalInput<FunctionSnapStart>(map['snapStart']),
      sourceCodeHash: Input.asOptionalInput<String>(map['sourceCodeHash']),
      sourceKmsKeyArn: Input.asOptionalInput<String>(map['sourceKmsKeyArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenancyConfig:
          Input.asOptionalInput<FunctionTenancyConfig>(map['tenancyConfig']),
      timeout: Input.asOptionalInput<int>(map['timeout']),
      tracingConfig:
          Input.asOptionalInput<FunctionTracingConfig>(map['tracingConfig']),
      vpcConfig: Input.asOptionalInput<FunctionVpcConfig>(map['vpcConfig']),
    );
  }
}
