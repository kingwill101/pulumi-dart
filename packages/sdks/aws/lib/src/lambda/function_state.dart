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
    this.architectures,
    this.arn,
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
    this.invokeArn,
    this.kmsKeyArn,
    this.lastModified,
    this.layers,
    this.loggingConfig,
    this.memorySize,
    this.name,
    this.packageType,
    this.publish,
    this.publishTo,
    this.qualifiedArn,
    this.qualifiedInvokeArn,
    this.region,
    this.replaceSecurityGroupsOnDestroy,
    this.replacementSecurityGroupIds,
    this.reservedConcurrentExecutions,
    this.responseStreamingInvokeArn,
    this.role,
    this.runtime,
    this.s3Bucket,
    this.s3Key,
    this.s3ObjectVersion,
    this.signingJobArn,
    this.signingProfileVersionArn,
    this.skipDestroy,
    this.snapStart,
    this.sourceCodeHash,
    this.sourceCodeSize,
    this.sourceKmsKeyArn,
    this.tags,
    this.tagsAll,
    this.tenancyConfig,
    this.timeout,
    this.tracingConfig,
    this.version,
    this.vpcConfig,
  });

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
      architectures: map['architectures'] == null ? null : ((map['architectures'] as List).cast<String>()).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      capacityProviderConfig: map['capacityProviderConfig'] == null ? null : (FunctionCapacityProviderConfig.fromMap((map['capacityProviderConfig'] as Map).cast<String, dynamic>())).input(),
      code: map['code'] == null ? null : (map['code']).input(),
      codeSha256: map['codeSha256'] == null ? null : (map['codeSha256'] as String).input(),
      codeSigningConfigArn: map['codeSigningConfigArn'] == null ? null : (map['codeSigningConfigArn'] as String).input(),
      deadLetterConfig: map['deadLetterConfig'] == null ? null : (FunctionDeadLetterConfig.fromMap((map['deadLetterConfig'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      durableConfig: map['durableConfig'] == null ? null : (FunctionDurableConfig.fromMap((map['durableConfig'] as Map).cast<String, dynamic>())).input(),
      environment: map['environment'] == null ? null : (FunctionEnvironment.fromMap((map['environment'] as Map).cast<String, dynamic>())).input(),
      ephemeralStorage: map['ephemeralStorage'] == null ? null : (FunctionEphemeralStorage.fromMap((map['ephemeralStorage'] as Map).cast<String, dynamic>())).input(),
      fileSystemConfig: map['fileSystemConfig'] == null ? null : (FunctionFileSystemConfig.fromMap((map['fileSystemConfig'] as Map).cast<String, dynamic>())).input(),
      handler: map['handler'] == null ? null : (map['handler'] as String).input(),
      imageConfig: map['imageConfig'] == null ? null : (FunctionImageConfig.fromMap((map['imageConfig'] as Map).cast<String, dynamic>())).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri'] as String).input(),
      invokeArn: map['invokeArn'] == null ? null : (map['invokeArn'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      lastModified: map['lastModified'] == null ? null : (map['lastModified'] as String).input(),
      layers: map['layers'] == null ? null : ((map['layers'] as List).cast<String>()).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (FunctionLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      memorySize: map['memorySize'] == null ? null : (map['memorySize'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      packageType: map['packageType'] == null ? null : (map['packageType'] as String).input(),
      publish: map['publish'] == null ? null : (map['publish'] as bool).input(),
      publishTo: map['publishTo'] == null ? null : (map['publishTo'] as String).input(),
      qualifiedArn: map['qualifiedArn'] == null ? null : (map['qualifiedArn'] as String).input(),
      qualifiedInvokeArn: map['qualifiedInvokeArn'] == null ? null : (map['qualifiedInvokeArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      replaceSecurityGroupsOnDestroy: map['replaceSecurityGroupsOnDestroy'] == null ? null : (map['replaceSecurityGroupsOnDestroy'] as bool).input(),
      replacementSecurityGroupIds: map['replacementSecurityGroupIds'] == null ? null : ((map['replacementSecurityGroupIds'] as List).cast<String>()).input(),
      reservedConcurrentExecutions: map['reservedConcurrentExecutions'] == null ? null : (map['reservedConcurrentExecutions'] as int).input(),
      responseStreamingInvokeArn: map['responseStreamingInvokeArn'] == null ? null : (map['responseStreamingInvokeArn'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      runtime: map['runtime'] == null ? null : (map['runtime'] as String).input(),
      s3Bucket: map['s3Bucket'] == null ? null : (map['s3Bucket'] as String).input(),
      s3Key: map['s3Key'] == null ? null : (map['s3Key'] as String).input(),
      s3ObjectVersion: map['s3ObjectVersion'] == null ? null : (map['s3ObjectVersion'] as String).input(),
      signingJobArn: map['signingJobArn'] == null ? null : (map['signingJobArn'] as String).input(),
      signingProfileVersionArn: map['signingProfileVersionArn'] == null ? null : (map['signingProfileVersionArn'] as String).input(),
      skipDestroy: map['skipDestroy'] == null ? null : (map['skipDestroy'] as bool).input(),
      snapStart: map['snapStart'] == null ? null : (FunctionSnapStart.fromMap((map['snapStart'] as Map).cast<String, dynamic>())).input(),
      sourceCodeHash: map['sourceCodeHash'] == null ? null : (map['sourceCodeHash'] as String).input(),
      sourceCodeSize: map['sourceCodeSize'] == null ? null : (map['sourceCodeSize'] as int).input(),
      sourceKmsKeyArn: map['sourceKmsKeyArn'] == null ? null : (map['sourceKmsKeyArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      tenancyConfig: map['tenancyConfig'] == null ? null : (FunctionTenancyConfig.fromMap((map['tenancyConfig'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
      tracingConfig: map['tracingConfig'] == null ? null : (FunctionTracingConfig.fromMap((map['tracingConfig'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      vpcConfig: map['vpcConfig'] == null ? null : (FunctionVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

