// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_path_options.dart';
import 'function_capacity_provider_config.dart';
import 'function_dead_letter_config.dart';
import 'function_durable_config.dart';
import 'function_environment.dart';
import 'function_ephemeral_storage.dart';
import 'function_file_system_config.dart';
import 'function_image_config.dart';
import 'function_logging_config.dart';
import 'function_snap_start.dart';
import 'function_tenancy_config.dart';
import 'function_tracing_config.dart';
import 'function_vpc_config.dart';
import 'runtime.dart';

/// {@template pulumi_lambda_callback_function_callback_function_args_doc}
/// The set of arguments for CallbackFunction.
/// {@endtemplate}
/// {@macro pulumi_lambda_callback_function_callback_function_args_doc}
class CallbackFunctionArgs {
  /// Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  final pulumi.Input<List<String>>? architectures;

  /// The Javascript function to use as the entrypoint for the AWS Lambda out of. Either callback or callbackFactory must be provided.
  final pulumi.Input<dynamic>? callback;

  /// The Javascript function that will be called to produce the callback function that is the entrypoint for the AWS Lambda. Either callback or callbackFactory must be provided.
  final pulumi.Input<dynamic>? callbackFactory;

  /// Configuration block for Lambda Capacity Provider. See below.
  final pulumi.Input<FunctionCapacityProviderConfig>? capacityProviderConfig;

  /// Options to control which paths/packages should be included or excluded in the zip file containing the code for the AWS lambda.
  final pulumi.Input<CodePathOptions>? codePathOptions;

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

  /// A list of IAM policy ARNs to attach to the Function. Only one of `role` or `policies` can be provided. If neither is provided, the default policies will be used instead.
  final pulumi.Input<Map<String, String>>? policies;

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

  /// The execution role for the Lambda Function. The role provides the function's identity and access to AWS services and resources. Only one of `role` or `policies` can be provided. If neither is provided, the default policies will be used instead.
  final pulumi.Input<String>? role;

  /// The Lambda runtime to use. If not provided, will default to `NodeJS20dX`.
  final pulumi.Input<Runtime>? runtime;

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

  /// Creates a new [CallbackFunctionArgs].
  /// [architectures] Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  /// [callback] The Javascript function to use as the entrypoint for the AWS Lambda out of. Either callback or callbackFactory must be provided.
  /// [callbackFactory] The Javascript function that will be called to produce the callback function that is the entrypoint for the AWS Lambda. Either callback or callbackFactory must be provided.
  /// [capacityProviderConfig] Configuration block for Lambda Capacity Provider. See below.
  /// [codePathOptions] Options to control which paths/packages should be included or excluded in the zip file containing the code for the AWS lambda.
  /// [codeSha256] Base64-encoded representation the source code package file. Use this argument to trigger updates when the function source code changes. For OCI, this value is relayed directly from the image digest. For zip files, this value is the Base64 encoded SHA-256 hash of the `.zip` file. Layers are not included in the calculation. To trigger updates using a non-standard hashing algorithm, use the `source_code_hash` argument instead.
  /// [codeSigningConfigArn] ARN of a code-signing configuration to enable code signing for this function.
  /// [deadLetterConfig] Configuration block for dead letter queue. See below.
  /// [description] Description of what your Lambda Function does.
  /// [durableConfig] Configuration block for durable function settings. See below. `durable_config` may only be available in [limited regions](https://builder.aws.com/build/capabilities), including `us-east-2`.
  /// [environment] Configuration block for environment variables. See below.
  /// [ephemeralStorage] Amount of ephemeral storage (`/tmp`) to allocate for the Lambda Function. See below.
  /// [fileSystemConfig] Configuration block for EFS file system. See below.
  /// [imageConfig] Container image configuration values. See below.
  /// [imageUri] ECR image URI containing the function's deployment package. Conflicts with `filename` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  /// [kmsKeyArn] ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  /// [layers] List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  /// [loggingConfig] Configuration block for advanced logging settings. See below.
  /// [memorySize] Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  /// [name] Unique name for your Lambda Function.
  /// [packageType] Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  /// [policies] A list of IAM policy ARNs to attach to the Function. Only one of `role` or `policies` can be provided. If neither is provided, the default policies will be used instead.
  /// [publish] Whether to publish creation/change as new Lambda Function Version. Defaults to `false`.
  /// [publishTo] Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceSecurityGroupsOnDestroy] Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  /// [replacementSecurityGroupIds] List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replace_security_groups_on_destroy` is `true`.
  /// [reservedConcurrentExecutions] Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  /// [role] The execution role for the Lambda Function. The role provides the function's identity and access to AWS services and resources. Only one of `role` or `policies` can be provided. If neither is provided, the default policies will be used instead.
  /// [runtime] The Lambda runtime to use. If not provided, will default to `NodeJS20dX`.
  /// [s3Bucket] S3 bucket location containing the function's deployment package. Conflicts with `filename` and `image_uri`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  /// [s3Key] S3 key of an object containing the function's deployment package. Required if `s3_bucket` is set.
  /// [s3ObjectVersion] Object version containing the function's deployment package. Conflicts with `filename` and `image_uri`.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`.
  /// [snapStart] Configuration block for snap start settings. See below.
  /// [sourceCodeHash] User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the `code_sha256` argument instead.
  /// [sourceKmsKeyArn] ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package. Conflicts with `image_uri`.
  /// [tags] Key-value map of tags for the Lambda function. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenancyConfig] Configuration block for Tenancy. See below.
  /// [timeout] Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  /// [tracingConfig] Configuration block for X-Ray tracing. See below.
  /// [vpcConfig] Configuration block for VPC. See below.
  CallbackFunctionArgs({
    List<String>? architectures,
    dynamic callback,
    dynamic callbackFactory,
    FunctionCapacityProviderConfig? capacityProviderConfig,
    CodePathOptions? codePathOptions,
    String? codeSha256,
    String? codeSigningConfigArn,
    FunctionDeadLetterConfig? deadLetterConfig,
    String? description,
    FunctionDurableConfig? durableConfig,
    FunctionEnvironment? environment,
    FunctionEphemeralStorage? ephemeralStorage,
    FunctionFileSystemConfig? fileSystemConfig,
    FunctionImageConfig? imageConfig,
    String? imageUri,
    String? kmsKeyArn,
    List<String>? layers,
    FunctionLoggingConfig? loggingConfig,
    int? memorySize,
    String? name,
    String? packageType,
    Map<String, String>? policies,
    bool? publish,
    String? publishTo,
    String? region,
    bool? replaceSecurityGroupsOnDestroy,
    List<String>? replacementSecurityGroupIds,
    int? reservedConcurrentExecutions,
    String? role,
    Runtime? runtime,
    String? s3Bucket,
    String? s3Key,
    String? s3ObjectVersion,
    bool? skipDestroy,
    FunctionSnapStart? snapStart,
    String? sourceCodeHash,
    String? sourceKmsKeyArn,
    Map<String, String>? tags,
    FunctionTenancyConfig? tenancyConfig,
    int? timeout,
    FunctionTracingConfig? tracingConfig,
    FunctionVpcConfig? vpcConfig,
  })  : architectures =
            pulumi.Input.asOptionalInput<List<String>>(architectures),
        callback = pulumi.Input.asOptionalInput<dynamic>(callback),
        callbackFactory =
            pulumi.Input.asOptionalInput<dynamic>(callbackFactory),
        capacityProviderConfig =
            pulumi.Input.asOptionalInput<FunctionCapacityProviderConfig>(
                capacityProviderConfig),
        codePathOptions =
            pulumi.Input.asOptionalInput<CodePathOptions>(codePathOptions),
        codeSha256 = pulumi.Input.asOptionalInput<String>(codeSha256),
        codeSigningConfigArn =
            pulumi.Input.asOptionalInput<String>(codeSigningConfigArn),
        deadLetterConfig =
            pulumi.Input.asOptionalInput<FunctionDeadLetterConfig>(
                deadLetterConfig),
        description = pulumi.Input.asOptionalInput<String>(description),
        durableConfig =
            pulumi.Input.asOptionalInput<FunctionDurableConfig>(durableConfig),
        environment =
            pulumi.Input.asOptionalInput<FunctionEnvironment>(environment),
        ephemeralStorage =
            pulumi.Input.asOptionalInput<FunctionEphemeralStorage>(
                ephemeralStorage),
        fileSystemConfig =
            pulumi.Input.asOptionalInput<FunctionFileSystemConfig>(
                fileSystemConfig),
        imageConfig =
            pulumi.Input.asOptionalInput<FunctionImageConfig>(imageConfig),
        imageUri = pulumi.Input.asOptionalInput<String>(imageUri),
        kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
        layers = pulumi.Input.asOptionalInput<List<String>>(layers),
        loggingConfig =
            pulumi.Input.asOptionalInput<FunctionLoggingConfig>(loggingConfig),
        memorySize = pulumi.Input.asOptionalInput<int>(memorySize),
        name = pulumi.Input.asOptionalInput<String>(name),
        packageType = pulumi.Input.asOptionalInput<String>(packageType),
        policies = pulumi.Input.asOptionalInput<Map<String, String>>(policies),
        publish = pulumi.Input.asOptionalInput<bool>(publish),
        publishTo = pulumi.Input.asOptionalInput<String>(publishTo),
        region = pulumi.Input.asOptionalInput<String>(region),
        replaceSecurityGroupsOnDestroy =
            pulumi.Input.asOptionalInput<bool>(replaceSecurityGroupsOnDestroy),
        replacementSecurityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(
                replacementSecurityGroupIds),
        reservedConcurrentExecutions =
            pulumi.Input.asOptionalInput<int>(reservedConcurrentExecutions),
        role = pulumi.Input.asOptionalInput<String>(role),
        runtime = pulumi.Input.asOptionalInput<Runtime>(runtime),
        s3Bucket = pulumi.Input.asOptionalInput<String>(s3Bucket),
        s3Key = pulumi.Input.asOptionalInput<String>(s3Key),
        s3ObjectVersion = pulumi.Input.asOptionalInput<String>(s3ObjectVersion),
        skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
        snapStart = pulumi.Input.asOptionalInput<FunctionSnapStart>(snapStart),
        sourceCodeHash = pulumi.Input.asOptionalInput<String>(sourceCodeHash),
        sourceKmsKeyArn = pulumi.Input.asOptionalInput<String>(sourceKmsKeyArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        tenancyConfig =
            pulumi.Input.asOptionalInput<FunctionTenancyConfig>(tenancyConfig),
        timeout = pulumi.Input.asOptionalInput<int>(timeout),
        tracingConfig =
            pulumi.Input.asOptionalInput<FunctionTracingConfig>(tracingConfig),
        vpcConfig = pulumi.Input.asOptionalInput<FunctionVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architecturesValue = architectures;
    if (architecturesValue != null) {
      map['architectures'] = architecturesValue;
    }
    final callbackValue = callback;
    if (callbackValue != null) {
      map['callback'] = callbackValue;
    }
    final callbackFactoryValue = callbackFactory;
    if (callbackFactoryValue != null) {
      map['callbackFactory'] = callbackFactoryValue;
    }
    final capacityProviderConfigValue = capacityProviderConfig;
    if (capacityProviderConfigValue != null) {
      map['capacityProviderConfig'] = pulumi.Input.mapOptionalInputValue<
              FunctionCapacityProviderConfig, Map<String, dynamic>>(
          capacityProviderConfigValue, (value) => value.toMap());
    }
    final codePathOptionsValue = codePathOptions;
    if (codePathOptionsValue != null) {
      map['codePathOptions'] = pulumi.Input.mapOptionalInputValue<
          CodePathOptions,
          Map<String, dynamic>>(codePathOptionsValue, (value) => value.toMap());
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
    final policiesValue = policies;
    if (policiesValue != null) {
      map['policies'] = policiesValue;
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
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = pulumi.Input.mapOptionalInputValue<Runtime, String>(
          runtimeValue, (value) => value.value);
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

  factory CallbackFunctionArgs.fromMap(Map<String, dynamic> map) {
    return CallbackFunctionArgs(
      architectures: map['architectures'] == null
          ? null
          : (map['architectures'] as List).cast<String>(),
      callback: map['callback'] == null ? null : map['callback'],
      callbackFactory:
          map['callbackFactory'] == null ? null : map['callbackFactory'],
      capacityProviderConfig: map['capacityProviderConfig'] == null
          ? null
          : FunctionCapacityProviderConfig.fromMap(
              (map['capacityProviderConfig'] as Map).cast<String, dynamic>()),
      codePathOptions: map['codePathOptions'] == null
          ? null
          : CodePathOptions.fromMap(
              (map['codePathOptions'] as Map).cast<String, dynamic>()),
      codeSha256:
          map['codeSha256'] == null ? null : map['codeSha256'] as String,
      codeSigningConfigArn: map['codeSigningConfigArn'] == null
          ? null
          : map['codeSigningConfigArn'] as String,
      deadLetterConfig: map['deadLetterConfig'] == null
          ? null
          : FunctionDeadLetterConfig.fromMap(
              (map['deadLetterConfig'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      durableConfig: map['durableConfig'] == null
          ? null
          : FunctionDurableConfig.fromMap(
              (map['durableConfig'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null
          ? null
          : FunctionEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>()),
      ephemeralStorage: map['ephemeralStorage'] == null
          ? null
          : FunctionEphemeralStorage.fromMap(
              (map['ephemeralStorage'] as Map).cast<String, dynamic>()),
      fileSystemConfig: map['fileSystemConfig'] == null
          ? null
          : FunctionFileSystemConfig.fromMap(
              (map['fileSystemConfig'] as Map).cast<String, dynamic>()),
      imageConfig: map['imageConfig'] == null
          ? null
          : FunctionImageConfig.fromMap(
              (map['imageConfig'] as Map).cast<String, dynamic>()),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      layers:
          map['layers'] == null ? null : (map['layers'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : FunctionLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
      memorySize: map['memorySize'] == null ? null : map['memorySize'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      packageType:
          map['packageType'] == null ? null : map['packageType'] as String,
      policies: map['policies'] == null
          ? null
          : (map['policies'] as Map).cast<String, String>(),
      publish: map['publish'] == null ? null : map['publish'] as bool,
      publishTo: map['publishTo'] == null ? null : map['publishTo'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replaceSecurityGroupsOnDestroy:
          map['replaceSecurityGroupsOnDestroy'] == null
              ? null
              : map['replaceSecurityGroupsOnDestroy'] as bool,
      replacementSecurityGroupIds: map['replacementSecurityGroupIds'] == null
          ? null
          : (map['replacementSecurityGroupIds'] as List).cast<String>(),
      reservedConcurrentExecutions: map['reservedConcurrentExecutions'] == null
          ? null
          : map['reservedConcurrentExecutions'] as int,
      role: map['role'] == null ? null : map['role'] as String,
      runtime: map['runtime'] == null
          ? null
          : Runtime.fromValue(map['runtime'] as String),
      s3Bucket: map['s3Bucket'] == null ? null : map['s3Bucket'] as String,
      s3Key: map['s3Key'] == null ? null : map['s3Key'] as String,
      s3ObjectVersion: map['s3ObjectVersion'] == null
          ? null
          : map['s3ObjectVersion'] as String,
      skipDestroy:
          map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      snapStart: map['snapStart'] == null
          ? null
          : FunctionSnapStart.fromMap(
              (map['snapStart'] as Map).cast<String, dynamic>()),
      sourceCodeHash: map['sourceCodeHash'] == null
          ? null
          : map['sourceCodeHash'] as String,
      sourceKmsKeyArn: map['sourceKmsKeyArn'] == null
          ? null
          : map['sourceKmsKeyArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tenancyConfig: map['tenancyConfig'] == null
          ? null
          : FunctionTenancyConfig.fromMap(
              (map['tenancyConfig'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      tracingConfig: map['tracingConfig'] == null
          ? null
          : FunctionTracingConfig.fromMap(
              (map['tracingConfig'] as Map).cast<String, dynamic>()),
      vpcConfig: map['vpcConfig'] == null
          ? null
          : FunctionVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
