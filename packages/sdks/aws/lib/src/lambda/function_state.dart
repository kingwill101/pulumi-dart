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

/// Input properties used for looking up and filtering Function resources.
class FunctionState {
  /// Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  final pulumi.Input<List<String>>? architectures;
  /// ARN identifying your Lambda Function.
  final pulumi.Input<String>? arn;
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
  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  final pulumi.Input<String>? invokeArn;
  /// ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  final pulumi.Input<String>? kmsKeyArn;
  /// Date this resource was last modified.
  final pulumi.Input<String>? lastModified;
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
  /// ARN identifying your Lambda Function Version (if versioning is enabled via `publish = true`).
  final pulumi.Input<String>? qualifiedArn;
  /// Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  final pulumi.Input<String>? qualifiedInvokeArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  final pulumi.Input<bool>? replaceSecurityGroupsOnDestroy;
  /// List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replace_security_groups_on_destroy` is `true`.
  final pulumi.Input<List<String>>? replacementSecurityGroupIds;
  /// Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  final pulumi.Input<int>? reservedConcurrentExecutions;
  /// ARN to be used for invoking Lambda Function from API Gateway with response streaming - to be used in `aws.apigateway.Integration`'s `uri`.
  final pulumi.Input<String>? responseStreamingInvokeArn;
  /// ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? role;
  /// Identifier of the function's runtime. Required if `package_type` is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
  final pulumi.Input<String>? runtime;
  /// S3 bucket location containing the function's deployment package. Conflicts with `filename` and `image_uri`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  final pulumi.Input<String>? s3Bucket;
  /// S3 key of an object containing the function's deployment package. Required if `s3_bucket` is set.
  final pulumi.Input<String>? s3Key;
  /// Object version containing the function's deployment package. Conflicts with `filename` and `image_uri`.
  final pulumi.Input<String>? s3ObjectVersion;
  /// ARN of the signing job.
  final pulumi.Input<String>? signingJobArn;
  /// ARN of the signing profile version.
  final pulumi.Input<String>? signingProfileVersionArn;
  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`.
  final pulumi.Input<bool>? skipDestroy;
  /// Configuration block for snap start settings. See below.
  final pulumi.Input<FunctionSnapStart>? snapStart;
  /// User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the `code_sha256` argument instead.
  final pulumi.Input<String>? sourceCodeHash;
  /// Size in bytes of the function .zip file.
  final pulumi.Input<int>? sourceCodeSize;
  /// ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package. Conflicts with `image_uri`.
  final pulumi.Input<String>? sourceKmsKeyArn;
  /// Key-value map of tags for the Lambda function. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for Tenancy. See below.
  final pulumi.Input<FunctionTenancyConfig>? tenancyConfig;
  /// Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  final pulumi.Input<int>? timeout;
  /// Configuration block for X-Ray tracing. See below.
  final pulumi.Input<FunctionTracingConfig>? tracingConfig;
  /// Latest published version of your Lambda Function.
  final pulumi.Input<String>? version;
  /// Configuration block for VPC. See below.
  final pulumi.Input<FunctionVpcConfig>? vpcConfig;

  /// Creates a new [FunctionState].
  /// [architectures] Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  /// [arn] ARN identifying your Lambda Function.
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
  /// [invokeArn] ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  /// [kmsKeyArn] ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  /// [lastModified] Date this resource was last modified.
  /// [layers] List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  /// [loggingConfig] Configuration block for advanced logging settings. See below.
  /// [memorySize] Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  /// [name] Unique name for your Lambda Function.
  /// [packageType] Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  /// [publish] Whether to publish creation/change as new Lambda Function Version. Defaults to `false`.
  /// [publishTo] Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  /// [qualifiedArn] ARN identifying your Lambda Function Version (if versioning is enabled via `publish = true`).
  /// [qualifiedInvokeArn] Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replaceSecurityGroupsOnDestroy] Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  /// [replacementSecurityGroupIds] List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replace_security_groups_on_destroy` is `true`.
  /// [reservedConcurrentExecutions] Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  /// [responseStreamingInvokeArn] ARN to be used for invoking Lambda Function from API Gateway with response streaming - to be used in `aws.apigateway.Integration`'s `uri`.
  /// [role] ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  /// [runtime] Identifier of the function's runtime. Required if `package_type` is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
  /// [s3Bucket] S3 bucket location containing the function's deployment package. Conflicts with `filename` and `image_uri`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  /// [s3Key] S3 key of an object containing the function's deployment package. Required if `s3_bucket` is set.
  /// [s3ObjectVersion] Object version containing the function's deployment package. Conflicts with `filename` and `image_uri`.
  /// [signingJobArn] ARN of the signing job.
  /// [signingProfileVersionArn] ARN of the signing profile version.
  /// [skipDestroy] Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`.
  /// [snapStart] Configuration block for snap start settings. See below.
  /// [sourceCodeHash] User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the `code_sha256` argument instead.
  /// [sourceCodeSize] Size in bytes of the function .zip file.
  /// [sourceKmsKeyArn] ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package. Conflicts with `image_uri`.
  /// [tags] Key-value map of tags for the Lambda function. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tenancyConfig] Configuration block for Tenancy. See below.
  /// [timeout] Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  /// [tracingConfig] Configuration block for X-Ray tracing. See below.
  /// [version] Latest published version of your Lambda Function.
  /// [vpcConfig] Configuration block for VPC. See below.
  FunctionState({
    pulumi.Output<List<String>>? architectures,
    pulumi.Output<String>? arn,
    pulumi.Output<FunctionCapacityProviderConfig>? capacityProviderConfig,
    pulumi.Output<dynamic>? code,
    pulumi.Output<String>? codeSha256,
    pulumi.Output<String>? codeSigningConfigArn,
    pulumi.Output<FunctionDeadLetterConfig>? deadLetterConfig,
    pulumi.Output<String>? description,
    pulumi.Output<FunctionDurableConfig>? durableConfig,
    pulumi.Output<FunctionEnvironment>? environment,
    pulumi.Output<FunctionEphemeralStorage>? ephemeralStorage,
    pulumi.Output<FunctionFileSystemConfig>? fileSystemConfig,
    pulumi.Output<String>? handler,
    pulumi.Output<FunctionImageConfig>? imageConfig,
    pulumi.Output<String>? imageUri,
    pulumi.Output<String>? invokeArn,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? lastModified,
    pulumi.Output<List<String>>? layers,
    pulumi.Output<FunctionLoggingConfig>? loggingConfig,
    pulumi.Output<int>? memorySize,
    pulumi.Output<String>? name,
    pulumi.Output<String>? packageType,
    pulumi.Output<bool>? publish,
    pulumi.Output<String>? publishTo,
    pulumi.Output<String>? qualifiedArn,
    pulumi.Output<String>? qualifiedInvokeArn,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? replaceSecurityGroupsOnDestroy,
    pulumi.Output<List<String>>? replacementSecurityGroupIds,
    pulumi.Output<int>? reservedConcurrentExecutions,
    pulumi.Output<String>? responseStreamingInvokeArn,
    pulumi.Output<String>? role,
    pulumi.Output<String>? runtime,
    pulumi.Output<String>? s3Bucket,
    pulumi.Output<String>? s3Key,
    pulumi.Output<String>? s3ObjectVersion,
    pulumi.Output<String>? signingJobArn,
    pulumi.Output<String>? signingProfileVersionArn,
    pulumi.Output<bool>? skipDestroy,
    pulumi.Output<FunctionSnapStart>? snapStart,
    pulumi.Output<String>? sourceCodeHash,
    pulumi.Output<int>? sourceCodeSize,
    pulumi.Output<String>? sourceKmsKeyArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<FunctionTenancyConfig>? tenancyConfig,
    pulumi.Output<int>? timeout,
    pulumi.Output<FunctionTracingConfig>? tracingConfig,
    pulumi.Output<String>? version,
    pulumi.Output<FunctionVpcConfig>? vpcConfig,
  }) :
      architectures = pulumi.Input.asOptionalInput<List<String>>(architectures),
      arn = pulumi.Input.asOptionalInput<String>(arn),
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
      invokeArn = pulumi.Input.asOptionalInput<String>(invokeArn),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      layers = pulumi.Input.asOptionalInput<List<String>>(layers),
      loggingConfig = pulumi.Input.asOptionalInput<FunctionLoggingConfig>(loggingConfig),
      memorySize = pulumi.Input.asOptionalInput<int>(memorySize),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageType = pulumi.Input.asOptionalInput<String>(packageType),
      publish = pulumi.Input.asOptionalInput<bool>(publish),
      publishTo = pulumi.Input.asOptionalInput<String>(publishTo),
      qualifiedArn = pulumi.Input.asOptionalInput<String>(qualifiedArn),
      qualifiedInvokeArn = pulumi.Input.asOptionalInput<String>(qualifiedInvokeArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      replaceSecurityGroupsOnDestroy = pulumi.Input.asOptionalInput<bool>(replaceSecurityGroupsOnDestroy),
      replacementSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(replacementSecurityGroupIds),
      reservedConcurrentExecutions = pulumi.Input.asOptionalInput<int>(reservedConcurrentExecutions),
      responseStreamingInvokeArn = pulumi.Input.asOptionalInput<String>(responseStreamingInvokeArn),
      role = pulumi.Input.asOptionalInput<String>(role),
      runtime = pulumi.Input.asOptionalInput<String>(runtime),
      s3Bucket = pulumi.Input.asOptionalInput<String>(s3Bucket),
      s3Key = pulumi.Input.asOptionalInput<String>(s3Key),
      s3ObjectVersion = pulumi.Input.asOptionalInput<String>(s3ObjectVersion),
      signingJobArn = pulumi.Input.asOptionalInput<String>(signingJobArn),
      signingProfileVersionArn = pulumi.Input.asOptionalInput<String>(signingProfileVersionArn),
      skipDestroy = pulumi.Input.asOptionalInput<bool>(skipDestroy),
      snapStart = pulumi.Input.asOptionalInput<FunctionSnapStart>(snapStart),
      sourceCodeHash = pulumi.Input.asOptionalInput<String>(sourceCodeHash),
      sourceCodeSize = pulumi.Input.asOptionalInput<int>(sourceCodeSize),
      sourceKmsKeyArn = pulumi.Input.asOptionalInput<String>(sourceKmsKeyArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenancyConfig = pulumi.Input.asOptionalInput<FunctionTenancyConfig>(tenancyConfig),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      tracingConfig = pulumi.Input.asOptionalInput<FunctionTracingConfig>(tracingConfig),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcConfig = pulumi.Input.asOptionalInput<FunctionVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectures': ?architectures,
      'arn': ?arn,
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
      'invokeArn': ?invokeArn,
      'kmsKeyArn': ?kmsKeyArn,
      'lastModified': ?lastModified,
      'layers': ?layers,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'memorySize': ?memorySize,
      'name': ?name,
      'packageType': ?packageType,
      'publish': ?publish,
      'publishTo': ?publishTo,
      'qualifiedArn': ?qualifiedArn,
      'qualifiedInvokeArn': ?qualifiedInvokeArn,
      'region': ?region,
      'replaceSecurityGroupsOnDestroy': ?replaceSecurityGroupsOnDestroy,
      'replacementSecurityGroupIds': ?replacementSecurityGroupIds,
      'reservedConcurrentExecutions': ?reservedConcurrentExecutions,
      'responseStreamingInvokeArn': ?responseStreamingInvokeArn,
      'role': ?role,
      'runtime': ?runtime,
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3ObjectVersion': ?s3ObjectVersion,
      'signingJobArn': ?signingJobArn,
      'signingProfileVersionArn': ?signingProfileVersionArn,
      'skipDestroy': ?skipDestroy,
      'snapStart': ?pulumi.Input.mapOptionalInputValue<FunctionSnapStart, Map<String, dynamic>>(snapStart, (value) => value.toMap()),
      'sourceCodeHash': ?sourceCodeHash,
      'sourceCodeSize': ?sourceCodeSize,
      'sourceKmsKeyArn': ?sourceKmsKeyArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenancyConfig': ?pulumi.Input.mapOptionalInputValue<FunctionTenancyConfig, Map<String, dynamic>>(tenancyConfig, (value) => value.toMap()),
      'timeout': ?timeout,
      'tracingConfig': ?pulumi.Input.mapOptionalInputValue<FunctionTracingConfig, Map<String, dynamic>>(tracingConfig, (value) => value.toMap()),
      'version': ?version,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<FunctionVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory FunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionState(
      architectures: map['architectures'] == null ? null : pulumi.Output.create<List<String>>((map['architectures'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      capacityProviderConfig: map['capacityProviderConfig'] == null ? null : pulumi.Output.create<FunctionCapacityProviderConfig>(FunctionCapacityProviderConfig.fromMap((map['capacityProviderConfig'] as Map).cast<String, dynamic>())),
      code: map['code'] == null ? null : pulumi.Output.create<dynamic>(map['code']),
      codeSha256: map['codeSha256'] == null ? null : pulumi.Output.create<String>(map['codeSha256'] as String),
      codeSigningConfigArn: map['codeSigningConfigArn'] == null ? null : pulumi.Output.create<String>(map['codeSigningConfigArn'] as String),
      deadLetterConfig: map['deadLetterConfig'] == null ? null : pulumi.Output.create<FunctionDeadLetterConfig>(FunctionDeadLetterConfig.fromMap((map['deadLetterConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      durableConfig: map['durableConfig'] == null ? null : pulumi.Output.create<FunctionDurableConfig>(FunctionDurableConfig.fromMap((map['durableConfig'] as Map).cast<String, dynamic>())),
      environment: map['environment'] == null ? null : pulumi.Output.create<FunctionEnvironment>(FunctionEnvironment.fromMap((map['environment'] as Map).cast<String, dynamic>())),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : pulumi.Output.create<FunctionEphemeralStorage>(FunctionEphemeralStorage.fromMap((map['ephemeralStorage'] as Map).cast<String, dynamic>())),
      fileSystemConfig: map['fileSystemConfig'] == null ? null : pulumi.Output.create<FunctionFileSystemConfig>(FunctionFileSystemConfig.fromMap((map['fileSystemConfig'] as Map).cast<String, dynamic>())),
      handler: map['handler'] == null ? null : pulumi.Output.create<String>(map['handler'] as String),
      imageConfig: map['imageConfig'] == null ? null : pulumi.Output.create<FunctionImageConfig>(FunctionImageConfig.fromMap((map['imageConfig'] as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] == null ? null : pulumi.Output.create<String>(map['imageUri'] as String),
      invokeArn: map['invokeArn'] == null ? null : pulumi.Output.create<String>(map['invokeArn'] as String),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      layers: map['layers'] == null ? null : pulumi.Output.create<List<String>>((map['layers'] as List).cast<String>()),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<FunctionLoggingConfig>(FunctionLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      memorySize: map['memorySize'] == null ? null : pulumi.Output.create<int>(map['memorySize'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      packageType: map['packageType'] == null ? null : pulumi.Output.create<String>(map['packageType'] as String),
      publish: map['publish'] == null ? null : pulumi.Output.create<bool>(map['publish'] as bool),
      publishTo: map['publishTo'] == null ? null : pulumi.Output.create<String>(map['publishTo'] as String),
      qualifiedArn: map['qualifiedArn'] == null ? null : pulumi.Output.create<String>(map['qualifiedArn'] as String),
      qualifiedInvokeArn: map['qualifiedInvokeArn'] == null ? null : pulumi.Output.create<String>(map['qualifiedInvokeArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replaceSecurityGroupsOnDestroy: map['replaceSecurityGroupsOnDestroy'] == null ? null : pulumi.Output.create<bool>(map['replaceSecurityGroupsOnDestroy'] as bool),
      replacementSecurityGroupIds: map['replacementSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['replacementSecurityGroupIds'] as List).cast<String>()),
      reservedConcurrentExecutions: map['reservedConcurrentExecutions'] == null ? null : pulumi.Output.create<int>(map['reservedConcurrentExecutions'] as int),
      responseStreamingInvokeArn: map['responseStreamingInvokeArn'] == null ? null : pulumi.Output.create<String>(map['responseStreamingInvokeArn'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<String>(map['runtime'] as String),
      s3Bucket: map['s3Bucket'] == null ? null : pulumi.Output.create<String>(map['s3Bucket'] as String),
      s3Key: map['s3Key'] == null ? null : pulumi.Output.create<String>(map['s3Key'] as String),
      s3ObjectVersion: map['s3ObjectVersion'] == null ? null : pulumi.Output.create<String>(map['s3ObjectVersion'] as String),
      signingJobArn: map['signingJobArn'] == null ? null : pulumi.Output.create<String>(map['signingJobArn'] as String),
      signingProfileVersionArn: map['signingProfileVersionArn'] == null ? null : pulumi.Output.create<String>(map['signingProfileVersionArn'] as String),
      skipDestroy: map['skipDestroy'] == null ? null : pulumi.Output.create<bool>(map['skipDestroy'] as bool),
      snapStart: map['snapStart'] == null ? null : pulumi.Output.create<FunctionSnapStart>(FunctionSnapStart.fromMap((map['snapStart'] as Map).cast<String, dynamic>())),
      sourceCodeHash: map['sourceCodeHash'] == null ? null : pulumi.Output.create<String>(map['sourceCodeHash'] as String),
      sourceCodeSize: map['sourceCodeSize'] == null ? null : pulumi.Output.create<int>(map['sourceCodeSize'] as int),
      sourceKmsKeyArn: map['sourceKmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['sourceKmsKeyArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenancyConfig: map['tenancyConfig'] == null ? null : pulumi.Output.create<FunctionTenancyConfig>(FunctionTenancyConfig.fromMap((map['tenancyConfig'] as Map).cast<String, dynamic>())),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      tracingConfig: map['tracingConfig'] == null ? null : pulumi.Output.create<FunctionTracingConfig>(FunctionTracingConfig.fromMap((map['tracingConfig'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<FunctionVpcConfig>(FunctionVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

