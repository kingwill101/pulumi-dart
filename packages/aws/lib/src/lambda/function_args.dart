// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

/// {@template pulumi_lambda_function_function_args_doc}
/// The set of arguments for Function.
/// {@endtemplate}
/// {@macro pulumi_lambda_function_function_args_doc}
class FunctionArgs {
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

  /// Creates a new [FunctionArgs].
  /// [architectures] Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  /// [capacityProviderConfig] Configuration block for Lambda Capacity Provider. See below.
  /// [code] Path to the function's deployment package within the local filesystem. Conflicts with `image_uri` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  /// [codeSha256] Base64-encoded representation the source code package file. Use this argument to trigger updates when the function source code changes. For OCI, this value is relayed directly from the image digest. For zip files, this value is the Base64 encoded SHA-256 hash of the `.zip` file. Layers are not included in the calculation. To trigger updates using a non-standard hashing algorithm, use the `source_code_hash` argument instead.
  /// [codeSigningConfigArn] ARN of a code-signing configuration to enable code signing for this function.
  /// [deadLetterConfig] Configuration block for dead letter queue. See below.
  /// [description] Description of what your Lambda Function does.
  /// [durableConfig] Configuration block for durable function settings. See below. `durable_config` may only be available in [limited regions](https://builder.aws.com/build/capabilities), including `us-east-2`.
  /// [environment] Configuration block for environment variables. See below.
  /// [ephemeralStorage] Amount of ephemeral storage (`/tmp`) to allocate for the Lambda Function. See below.
  /// [fileSystemConfig] Configuration block for EFS file system. See below.
  /// [handler] Function entry point in your code. Required if `package_type` is `Zip`.
  /// [imageConfig] Container image configuration values. See below.
  /// [imageUri] ECR image URI containing the function's deployment package. Conflicts with `filename` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  /// [kmsKeyArn] ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  /// [layers] List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  /// [loggingConfig] Configuration block for advanced logging settings. See below.
  /// [memorySize] Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  /// [name] Unique name for your Lambda Function.
  /// [packageType] Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  /// [publish] Whether to publish creation/change as new Lambda Function Version. Defaults to `false`.
  /// [publishTo] Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceSecurityGroupsOnDestroy] Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  /// [replacementSecurityGroupIds] List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replace_security_groups_on_destroy` is `true`.
  /// [reservedConcurrentExecutions] Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  /// [role] ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  /// [runtime] Identifier of the function's runtime. Required if `package_type` is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
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
  FunctionArgs({
    List<String>? architectures,
    FunctionCapacityProviderConfig? capacityProviderConfig,
    dynamic code,
    String? codeSha256,
    String? codeSigningConfigArn,
    FunctionDeadLetterConfig? deadLetterConfig,
    String? description,
    FunctionDurableConfig? durableConfig,
    FunctionEnvironment? environment,
    FunctionEphemeralStorage? ephemeralStorage,
    FunctionFileSystemConfig? fileSystemConfig,
    String? handler,
    FunctionImageConfig? imageConfig,
    String? imageUri,
    String? kmsKeyArn,
    List<String>? layers,
    FunctionLoggingConfig? loggingConfig,
    int? memorySize,
    String? name,
    String? packageType,
    bool? publish,
    String? publishTo,
    String? region,
    bool? replaceSecurityGroupsOnDestroy,
    List<String>? replacementSecurityGroupIds,
    int? reservedConcurrentExecutions,
    required String role,
    String? runtime,
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
  }) :
      architectures = pulumi.Input.asOptionalInput<List<String>>(architectures),
      capacityProviderConfig = pulumi.Input.asOptionalInput<FunctionCapacityProviderConfig>(capacityProviderConfig),
      code = pulumi.Input.asOptionalInput<dynamic>(code),
      codeSha256 = pulumi.Input.asOptionalInput<String>(codeSha256),
      codeSigningConfigArn = pulumi.Input.asOptionalInput<String>(codeSigningConfigArn),
      deadLetterConfig = pulumi.Input.asOptionalInput<FunctionDeadLetterConfig>(deadLetterConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      durableConfig = pulumi.Input.asOptionalInput<FunctionDurableConfig>(durableConfig),
      environment = pulumi.Input.asOptionalInput<FunctionEnvironment>(environment),
      ephemeralStorage = pulumi.Input.asOptionalInput<FunctionEphemeralStorage>(ephemeralStorage),
      fileSystemConfig = pulumi.Input.asOptionalInput<FunctionFileSystemConfig>(fileSystemConfig),
      handler = pulumi.Input.asOptionalInput<String>(handler),
      imageConfig = pulumi.Input.asOptionalInput<FunctionImageConfig>(imageConfig),
      imageUri = pulumi.Input.asOptionalInput<String>(imageUri),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      layers = pulumi.Input.asOptionalInput<List<String>>(layers),
      loggingConfig = pulumi.Input.asOptionalInput<FunctionLoggingConfig>(loggingConfig),
      memorySize = pulumi.Input.asOptionalInput<int>(memorySize),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageType = pulumi.Input.asOptionalInput<String>(packageType),
      publish = pulumi.Input.asOptionalInput<bool>(publish),
      publishTo = pulumi.Input.asOptionalInput<String>(publishTo),
      region = pulumi.Input.asOptionalInput<String>(region),
      replaceSecurityGroupsOnDestroy = pulumi.Input.asOptionalInput<bool>(replaceSecurityGroupsOnDestroy),
      replacementSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(replacementSecurityGroupIds),
      reservedConcurrentExecutions = pulumi.Input.asOptionalInput<int>(reservedConcurrentExecutions),
      role = pulumi.Input.asInput<String>(role),
      runtime = pulumi.Input.asOptionalInput<String>(runtime),
      s3Bucket = pulumi.Input.asOptionalInput<String>(s3Bucket),
      s3Key = pulumi.Input.asOptionalInput<String>(s3Key),
      s3ObjectVersion = pulumi.Input.asOptionalInput<String>(s3ObjectVersion),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      snapStart = pulumi.Input.asOptionalInput<FunctionSnapStart>(snapStart),
      sourceCodeHash = pulumi.Input.asOptionalInput<String>(sourceCodeHash),
      sourceKmsKeyArn = pulumi.Input.asOptionalInput<String>(sourceKmsKeyArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenancyConfig = pulumi.Input.asOptionalInput<FunctionTenancyConfig>(tenancyConfig),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      tracingConfig = pulumi.Input.asOptionalInput<FunctionTracingConfig>(tracingConfig),
      vpcConfig = pulumi.Input.asOptionalInput<FunctionVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectures': ?architectures,
      'capacityProviderConfig': ?pulumi.Input.mapOptionalInputValue<FunctionCapacityProviderConfig, Map<String, dynamic>>(capacityProviderConfig, (value) => value.toMap()),
      'code': ?code,
      'codeSha256': ?codeSha256,
      'codeSigningConfigArn': ?codeSigningConfigArn,
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<FunctionDeadLetterConfig, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'description': ?description,
      'durableConfig': ?pulumi.Input.mapOptionalInputValue<FunctionDurableConfig, Map<String, dynamic>>(durableConfig, (value) => value.toMap()),
      'environment': ?pulumi.Input.mapOptionalInputValue<FunctionEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'ephemeralStorage': ?pulumi.Input.mapOptionalInputValue<FunctionEphemeralStorage, Map<String, dynamic>>(ephemeralStorage, (value) => value.toMap()),
      'fileSystemConfig': ?pulumi.Input.mapOptionalInputValue<FunctionFileSystemConfig, Map<String, dynamic>>(fileSystemConfig, (value) => value.toMap()),
      'handler': ?handler,
      'imageConfig': ?pulumi.Input.mapOptionalInputValue<FunctionImageConfig, Map<String, dynamic>>(imageConfig, (value) => value.toMap()),
      'imageUri': ?imageUri,
      'kmsKeyArn': ?kmsKeyArn,
      'layers': ?layers,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'memorySize': ?memorySize,
      'name': ?name,
      'packageType': ?packageType,
      'publish': ?publish,
      'publishTo': ?publishTo,
      'region': ?region,
      'replaceSecurityGroupsOnDestroy': ?replaceSecurityGroupsOnDestroy,
      'replacementSecurityGroupIds': ?replacementSecurityGroupIds,
      'reservedConcurrentExecutions': ?reservedConcurrentExecutions,
      'role': role,
      'runtime': ?runtime,
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3ObjectVersion': ?s3ObjectVersion,
      'skipDestroy': ?skipDestroy,
      'snapStart': ?pulumi.Input.mapOptionalInputValue<FunctionSnapStart, Map<String, dynamic>>(snapStart, (value) => value.toMap()),
      'sourceCodeHash': ?sourceCodeHash,
      'sourceKmsKeyArn': ?sourceKmsKeyArn,
      'tags': ?tags,
      'tenancyConfig': ?pulumi.Input.mapOptionalInputValue<FunctionTenancyConfig, Map<String, dynamic>>(tenancyConfig, (value) => value.toMap()),
      'timeout': ?timeout,
      'tracingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionTracingConfig, Map<String, dynamic>>(tracingConfig, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<FunctionVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      architectures: map['architectures'] == null ? null : (map['architectures'] as List).cast<String>(),
      capacityProviderConfig: map['capacityProviderConfig'] == null ? null : FunctionCapacityProviderConfig.fromMap((map['capacityProviderConfig'] as Map).cast<String, dynamic>()),
      code: map['code'] == null ? null : map['code'],
      codeSha256: map['codeSha256'] == null ? null : map['codeSha256'] as String,
      codeSigningConfigArn: map['codeSigningConfigArn'] == null ? null : map['codeSigningConfigArn'] as String,
      deadLetterConfig: map['deadLetterConfig'] == null ? null : FunctionDeadLetterConfig.fromMap((map['deadLetterConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      durableConfig: map['durableConfig'] == null ? null : FunctionDurableConfig.fromMap((map['durableConfig'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null ? null : FunctionEnvironment.fromMap((map['environment'] as Map).cast<String, dynamic>()),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : FunctionEphemeralStorage.fromMap((map['ephemeralStorage'] as Map).cast<String, dynamic>()),
      fileSystemConfig: map['fileSystemConfig'] == null ? null : FunctionFileSystemConfig.fromMap((map['fileSystemConfig'] as Map).cast<String, dynamic>()),
      handler: map['handler'] == null ? null : map['handler'] as String,
      imageConfig: map['imageConfig'] == null ? null : FunctionImageConfig.fromMap((map['imageConfig'] as Map).cast<String, dynamic>()),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      layers: map['layers'] == null ? null : (map['layers'] as List).cast<String>(),
      loggingConfig: map['loggingConfig'] == null ? null : FunctionLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>()),
      memorySize: map['memorySize'] == null ? null : map['memorySize'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      packageType: map['packageType'] == null ? null : map['packageType'] as String,
      publish: map['publish'] == null ? null : map['publish'] as bool,
      publishTo: map['publishTo'] == null ? null : map['publishTo'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replaceSecurityGroupsOnDestroy: map['replaceSecurityGroupsOnDestroy'] == null ? null : map['replaceSecurityGroupsOnDestroy'] as bool,
      replacementSecurityGroupIds: map['replacementSecurityGroupIds'] == null ? null : (map['replacementSecurityGroupIds'] as List).cast<String>(),
      reservedConcurrentExecutions: map['reservedConcurrentExecutions'] == null ? null : map['reservedConcurrentExecutions'] as int,
      role: map['role'] as String,
      runtime: map['runtime'] == null ? null : map['runtime'] as String,
      s3Bucket: map['s3Bucket'] == null ? null : map['s3Bucket'] as String,
      s3Key: map['s3Key'] == null ? null : map['s3Key'] as String,
      s3ObjectVersion: map['s3ObjectVersion'] == null ? null : map['s3ObjectVersion'] as String,
      skipDestroy: map['skipDestroy'] == null ? null : map['skipDestroy'] as bool,
      snapStart: map['snapStart'] == null ? null : FunctionSnapStart.fromMap((map['snapStart'] as Map).cast<String, dynamic>()),
      sourceCodeHash: map['sourceCodeHash'] == null ? null : map['sourceCodeHash'] as String,
      sourceKmsKeyArn: map['sourceKmsKeyArn'] == null ? null : map['sourceKmsKeyArn'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tenancyConfig: map['tenancyConfig'] == null ? null : FunctionTenancyConfig.fromMap((map['tenancyConfig'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      tracingConfig: map['tracingConfig'] == null ? null : FunctionTracingConfig.fromMap((map['tracingConfig'] as Map).cast<String, dynamic>()),
      vpcConfig: map['vpcConfig'] == null ? null : FunctionVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

