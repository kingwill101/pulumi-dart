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
    this.architectures,
    this.callback,
    this.callbackFactory,
    this.capacityProviderConfig,
    this.codePathOptions,
    this.codeSha256,
    this.codeSigningConfigArn,
    this.deadLetterConfig,
    this.description,
    this.durableConfig,
    this.environment,
    this.ephemeralStorage,
    this.fileSystemConfig,
    this.imageConfig,
    this.imageUri,
    this.kmsKeyArn,
    this.layers,
    this.loggingConfig,
    this.memorySize,
    this.name,
    this.packageType,
    this.policies,
    this.publish,
    this.publishTo,
    this.region,
    this.replaceSecurityGroupsOnDestroy,
    this.replacementSecurityGroupIds,
    this.reservedConcurrentExecutions,
    this.role,
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
    return <String, dynamic>{
      'architectures': ?architectures,
      'callback': ?callback,
      'callbackFactory': ?callbackFactory,
      'capacityProviderConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionCapacityProviderConfig,
            Map<String, dynamic>
          >(capacityProviderConfig, (value) => value.toMap()),
      'codePathOptions':
          ?pulumi.Input.mapOptionalInputValue<
            CodePathOptions,
            Map<String, dynamic>
          >(codePathOptions, (value) => value.toMap()),
      'codeSha256': ?codeSha256,
      'codeSigningConfigArn': ?codeSigningConfigArn,
      'deadLetterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionDeadLetterConfig,
            Map<String, dynamic>
          >(deadLetterConfig, (value) => value.toMap()),
      'description': ?description,
      'durableConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionDurableConfig,
            Map<String, dynamic>
          >(durableConfig, (value) => value.toMap()),
      'environment':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionEnvironment,
            Map<String, dynamic>
          >(environment, (value) => value.toMap()),
      'ephemeralStorage':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionEphemeralStorage,
            Map<String, dynamic>
          >(ephemeralStorage, (value) => value.toMap()),
      'fileSystemConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionFileSystemConfig,
            Map<String, dynamic>
          >(fileSystemConfig, (value) => value.toMap()),
      'imageConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionImageConfig,
            Map<String, dynamic>
          >(imageConfig, (value) => value.toMap()),
      'imageUri': ?imageUri,
      'kmsKeyArn': ?kmsKeyArn,
      'layers': ?layers,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionLoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'memorySize': ?memorySize,
      'name': ?name,
      'packageType': ?packageType,
      'policies': ?policies,
      'publish': ?publish,
      'publishTo': ?publishTo,
      'region': ?region,
      'replaceSecurityGroupsOnDestroy': ?replaceSecurityGroupsOnDestroy,
      'replacementSecurityGroupIds': ?replacementSecurityGroupIds,
      'reservedConcurrentExecutions': ?reservedConcurrentExecutions,
      'role': ?role,
      'runtime': ?pulumi.Input.mapOptionalInputValue<Runtime, String>(
        runtime,
        (value) => value.wireValue,
      ),
      's3Bucket': ?s3Bucket,
      's3Key': ?s3Key,
      's3ObjectVersion': ?s3ObjectVersion,
      'skipDestroy': ?skipDestroy,
      'snapStart':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionSnapStart,
            Map<String, dynamic>
          >(snapStart, (value) => value.toMap()),
      'sourceCodeHash': ?sourceCodeHash,
      'sourceKmsKeyArn': ?sourceKmsKeyArn,
      'tags': ?tags,
      'tenancyConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionTenancyConfig,
            Map<String, dynamic>
          >(tenancyConfig, (value) => value.toMap()),
      'timeout': ?timeout,
      'tracingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionTracingConfig,
            Map<String, dynamic>
          >(tracingConfig, (value) => value.toMap()),
      'vpcConfig':
          ?pulumi.Input.mapOptionalInputValue<
            FunctionVpcConfig,
            Map<String, dynamic>
          >(vpcConfig, (value) => value.toMap()),
    };
  }

  factory CallbackFunctionArgs.fromMap(Map<String, dynamic> map) {
    return CallbackFunctionArgs(
      architectures: (() {
        final guardedValue = map['architectures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      callback: (() {
        final guardedValue = map['callback'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      callbackFactory: (() {
        final guardedValue = map['callbackFactory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      capacityProviderConfig: (() {
        final guardedValue = map['capacityProviderConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionCapacityProviderConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      codePathOptions: (() {
        final guardedValue = map['codePathOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CodePathOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      codeSha256: (() {
        final guardedValue = map['codeSha256'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      codeSigningConfigArn: (() {
        final guardedValue = map['codeSigningConfigArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deadLetterConfig: (() {
        final guardedValue = map['deadLetterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionDeadLetterConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      durableConfig: (() {
        final guardedValue = map['durableConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionDurableConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionEnvironment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      ephemeralStorage: (() {
        final guardedValue = map['ephemeralStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionEphemeralStorage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fileSystemConfig: (() {
        final guardedValue = map['fileSystemConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionFileSystemConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageConfig: (() {
        final guardedValue = map['imageConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionImageConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageUri: (() {
        final guardedValue = map['imageUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      layers: (() {
        final guardedValue = map['layers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionLoggingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      memorySize: (() {
        final guardedValue = map['memorySize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageType: (() {
        final guardedValue = map['packageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policies: (() {
        final guardedValue = map['policies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      publish: (() {
        final guardedValue = map['publish'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      publishTo: (() {
        final guardedValue = map['publishTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replaceSecurityGroupsOnDestroy: (() {
        final guardedValue = map['replaceSecurityGroupsOnDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      replacementSecurityGroupIds: (() {
        final guardedValue = map['replacementSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      reservedConcurrentExecutions: (() {
        final guardedValue = map['reservedConcurrentExecutions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtime: (() {
        final guardedValue = map['runtime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Runtime.fromValue(guardedValue as String),
        );
      })(),
      s3Bucket: (() {
        final guardedValue = map['s3Bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3Key: (() {
        final guardedValue = map['s3Key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3ObjectVersion: (() {
        final guardedValue = map['s3ObjectVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipDestroy: (() {
        final guardedValue = map['skipDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      snapStart: (() {
        final guardedValue = map['snapStart'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionSnapStart.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceCodeHash: (() {
        final guardedValue = map['sourceCodeHash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceKmsKeyArn: (() {
        final guardedValue = map['sourceKmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tenancyConfig: (() {
        final guardedValue = map['tenancyConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionTenancyConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tracingConfig: (() {
        final guardedValue = map['tracingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionTracingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vpcConfig: (() {
        final guardedValue = map['vpcConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FunctionVpcConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
