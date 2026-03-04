// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_capacity_provider_config.dart';
import 'get_function_dead_letter_config.dart';
import 'get_function_durable_config.dart';
import 'get_function_environment.dart';
import 'get_function_ephemeral_storage.dart';
import 'get_function_file_system_config.dart';
import 'get_function_logging_config.dart';
import 'get_function_tenancy_config.dart';
import 'get_function_tracing_config.dart';
import 'get_function_vpc_config.dart';

/// Result data returned by getFunction.
class GetFunctionResult {
  /// Instruction set architecture for the Lambda function.
  final List<String> architectures;

  /// ARN of the Amazon EFS Access Point that provides access to the file system.
  final String arn;

  /// Configuration for Lambda function's capacity provider. See below.
  final List<GetFunctionCapacityProviderConfig> capacityProviderConfigs;

  /// Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String codeSha256;

  /// ARN for a Code Signing Configuration.
  final String codeSigningConfigArn;

  /// Configuration for the function's dead letter queue. See below.
  final GetFunctionDeadLetterConfig deadLetterConfig;

  /// Description of what your Lambda Function does.
  final String description;

  /// Configuration for the function's durable settings. See below.
  final List<GetFunctionDurableConfig> durableConfigs;

  /// Lambda environment's configuration settings. See below.
  final GetFunctionEnvironment environment;

  /// Amount of ephemeral storage (`/tmp`) allocated for the Lambda Function. See below.
  final List<GetFunctionEphemeralStorage> ephemeralStorages;

  /// Connection settings for an Amazon EFS file system. See below.
  final List<GetFunctionFileSystemConfig> fileSystemConfigs;
  final String functionName;

  /// Function entrypoint in your code.
  final String handler;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// URI of the container image.
  final String imageUri;

  /// ARN to be used for invoking Lambda Function from API Gateway. **Note:** Starting with `v4.51.0` of the provider, this will not include the qualifier.
  final String invokeArn;

  /// ARN for the KMS encryption key.
  final String kmsKeyArn;

  /// Date this resource was last modified.
  final String lastModified;

  /// List of Lambda Layer ARNs attached to your Lambda Function.
  final List<String> layers;

  /// Advanced logging settings. See below.
  final List<GetFunctionLoggingConfig> loggingConfigs;

  /// Amount of memory in MB your Lambda Function can use at runtime.
  final int memorySize;

  /// Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN identifying your Lambda Function. See also `arn`.
  final String qualifiedArn;

  /// Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN to be used for invoking Lambda Function from API Gateway. See also `invoke_arn`.
  final String qualifiedInvokeArn;
  final String? qualifier;
  final String region;

  /// Amount of reserved concurrent executions for this Lambda function or `-1` if unreserved.
  final int reservedConcurrentExecutions;

  /// ARN to be used for invoking Lambda Function from API Gateway with response streaming.
  final String responseStreamingInvokeArn;

  /// IAM role attached to the Lambda Function.
  final String role;

  /// Runtime environment for the Lambda function.
  final String runtime;

  /// ARN of a signing job.
  final String signingJobArn;

  /// ARN for a signing profile version.
  final String signingProfileVersionArn;

  /// (**Deprecated** use `code_sha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String sourceCodeHash;

  /// Size in bytes of the function .zip file.
  final int sourceCodeSize;

  /// ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package.
  final String sourceKmsKeyArn;

  /// Map of tags assigned to the Lambda Function.
  final Map<String, String> tags;

  /// Tenancy settings of the function. See below.
  final List<GetFunctionTenancyConfig> tenancyConfigs;

  /// Function execution time at which Lambda should terminate the function.
  final int timeout;

  /// Tracing settings of the function. See below.
  final GetFunctionTracingConfig tracingConfig;

  /// Version of the Lambda function returned. If `qualifier` is not set, this will resolve to the most recent published version. If no published version of the function exists, `version` will resolve to `$LATEST`.
  final String version;

  /// VPC configuration associated with your Lambda function. See below.
  final GetFunctionVpcConfig vpcConfig;

  /// Creates a new [GetFunctionResult].
  /// [architectures] Instruction set architecture for the Lambda function.
  /// [arn] ARN of the Amazon EFS Access Point that provides access to the file system.
  /// [capacityProviderConfigs] Configuration for Lambda function's capacity provider. See below.
  /// [codeSha256] Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [codeSigningConfigArn] ARN for a Code Signing Configuration.
  /// [deadLetterConfig] Configuration for the function's dead letter queue. See below.
  /// [description] Description of what your Lambda Function does.
  /// [durableConfigs] Configuration for the function's durable settings. See below.
  /// [environment] Lambda environment's configuration settings. See below.
  /// [ephemeralStorages] Amount of ephemeral storage (`/tmp`) allocated for the Lambda Function. See below.
  /// [fileSystemConfigs] Connection settings for an Amazon EFS file system. See below.
  /// [functionName] Required.
  /// [handler] Function entrypoint in your code.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageUri] URI of the container image.
  /// [invokeArn] ARN to be used for invoking Lambda Function from API Gateway. **Note:** Starting with `v4.51.0` of the provider, this will not include the qualifier.
  /// [kmsKeyArn] ARN for the KMS encryption key.
  /// [lastModified] Date this resource was last modified.
  /// [layers] List of Lambda Layer ARNs attached to your Lambda Function.
  /// [loggingConfigs] Advanced logging settings. See below.
  /// [memorySize] Amount of memory in MB your Lambda Function can use at runtime.
  /// [qualifiedArn] Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN identifying your Lambda Function. See also `arn`.
  /// [qualifiedInvokeArn] Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN to be used for invoking Lambda Function from API Gateway. See also `invoke_arn`.
  /// [qualifier] Optional.
  /// [region] Required.
  /// [reservedConcurrentExecutions] Amount of reserved concurrent executions for this Lambda function or `-1` if unreserved.
  /// [responseStreamingInvokeArn] ARN to be used for invoking Lambda Function from API Gateway with response streaming.
  /// [role] IAM role attached to the Lambda Function.
  /// [runtime] Runtime environment for the Lambda function.
  /// [signingJobArn] ARN of a signing job.
  /// [signingProfileVersionArn] ARN for a signing profile version.
  /// [sourceCodeHash] (**Deprecated** use `code_sha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [sourceCodeSize] Size in bytes of the function .zip file.
  /// [sourceKmsKeyArn] ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package.
  /// [tags] Map of tags assigned to the Lambda Function.
  /// [tenancyConfigs] Tenancy settings of the function. See below.
  /// [timeout] Function execution time at which Lambda should terminate the function.
  /// [tracingConfig] Tracing settings of the function. See below.
  /// [version] Version of the Lambda function returned. If `qualifier` is not set, this will resolve to the most recent published version. If no published version of the function exists, `version` will resolve to `$LATEST`.
  /// [vpcConfig] VPC configuration associated with your Lambda function. See below.
  GetFunctionResult({
    required this.architectures,
    required this.arn,
    required this.capacityProviderConfigs,
    required this.codeSha256,
    required this.codeSigningConfigArn,
    required this.deadLetterConfig,
    required this.description,
    required this.durableConfigs,
    required this.environment,
    required this.ephemeralStorages,
    required this.fileSystemConfigs,
    required this.functionName,
    required this.handler,
    required this.id,
    required this.imageUri,
    required this.invokeArn,
    required this.kmsKeyArn,
    required this.lastModified,
    required this.layers,
    required this.loggingConfigs,
    required this.memorySize,
    required this.qualifiedArn,
    required this.qualifiedInvokeArn,
    this.qualifier,
    required this.region,
    required this.reservedConcurrentExecutions,
    required this.responseStreamingInvokeArn,
    required this.role,
    required this.runtime,
    required this.signingJobArn,
    required this.signingProfileVersionArn,
    required this.sourceCodeHash,
    required this.sourceCodeSize,
    required this.sourceKmsKeyArn,
    required this.tags,
    required this.tenancyConfigs,
    required this.timeout,
    required this.tracingConfig,
    required this.version,
    required this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectures': architectures,
      'arn': arn,
      'capacityProviderConfigs':
          pulumi.Input.encodeList<
            GetFunctionCapacityProviderConfig,
            Map<String, dynamic>
          >(capacityProviderConfigs, (value) => value.toMap()),
      'codeSha256': codeSha256,
      'codeSigningConfigArn': codeSigningConfigArn,
      'deadLetterConfig': deadLetterConfig.toMap(),
      'description': description,
      'durableConfigs':
          pulumi.Input.encodeList<
            GetFunctionDurableConfig,
            Map<String, dynamic>
          >(durableConfigs, (value) => value.toMap()),
      'environment': environment.toMap(),
      'ephemeralStorages':
          pulumi.Input.encodeList<
            GetFunctionEphemeralStorage,
            Map<String, dynamic>
          >(ephemeralStorages, (value) => value.toMap()),
      'fileSystemConfigs':
          pulumi.Input.encodeList<
            GetFunctionFileSystemConfig,
            Map<String, dynamic>
          >(fileSystemConfigs, (value) => value.toMap()),
      'functionName': functionName,
      'handler': handler,
      'id': id,
      'imageUri': imageUri,
      'invokeArn': invokeArn,
      'kmsKeyArn': kmsKeyArn,
      'lastModified': lastModified,
      'layers': layers,
      'loggingConfigs':
          pulumi.Input.encodeList<
            GetFunctionLoggingConfig,
            Map<String, dynamic>
          >(loggingConfigs, (value) => value.toMap()),
      'memorySize': memorySize,
      'qualifiedArn': qualifiedArn,
      'qualifiedInvokeArn': qualifiedInvokeArn,
      'qualifier': ?qualifier,
      'region': region,
      'reservedConcurrentExecutions': reservedConcurrentExecutions,
      'responseStreamingInvokeArn': responseStreamingInvokeArn,
      'role': role,
      'runtime': runtime,
      'signingJobArn': signingJobArn,
      'signingProfileVersionArn': signingProfileVersionArn,
      'sourceCodeHash': sourceCodeHash,
      'sourceCodeSize': sourceCodeSize,
      'sourceKmsKeyArn': sourceKmsKeyArn,
      'tags': tags,
      'tenancyConfigs':
          pulumi.Input.encodeList<
            GetFunctionTenancyConfig,
            Map<String, dynamic>
          >(tenancyConfigs, (value) => value.toMap()),
      'timeout': timeout,
      'tracingConfig': tracingConfig.toMap(),
      'version': version,
      'vpcConfig': vpcConfig.toMap(),
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      architectures: (map['architectures'] as List).cast<String>(),
      arn: map['arn'] as String,
      capacityProviderConfigs:
          pulumi.Input.decodeList<GetFunctionCapacityProviderConfig>(
            map['capacityProviderConfigs']!,
            (value) => GetFunctionCapacityProviderConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      codeSha256: map['codeSha256'] as String,
      codeSigningConfigArn: map['codeSigningConfigArn'] as String,
      deadLetterConfig: GetFunctionDeadLetterConfig.fromMap(
        (map['deadLetterConfig']! as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      durableConfigs: pulumi.Input.decodeList<GetFunctionDurableConfig>(
        map['durableConfigs']!,
        (value) => GetFunctionDurableConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      environment: GetFunctionEnvironment.fromMap(
        (map['environment']! as Map).cast<String, dynamic>(),
      ),
      ephemeralStorages: pulumi.Input.decodeList<GetFunctionEphemeralStorage>(
        map['ephemeralStorages']!,
        (value) => GetFunctionEphemeralStorage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      fileSystemConfigs: pulumi.Input.decodeList<GetFunctionFileSystemConfig>(
        map['fileSystemConfigs']!,
        (value) => GetFunctionFileSystemConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      functionName: map['functionName'] as String,
      handler: map['handler'] as String,
      id: map['id'] as String,
      imageUri: map['imageUri'] as String,
      invokeArn: map['invokeArn'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
      lastModified: map['lastModified'] as String,
      layers: (map['layers'] as List).cast<String>(),
      loggingConfigs: pulumi.Input.decodeList<GetFunctionLoggingConfig>(
        map['loggingConfigs']!,
        (value) => GetFunctionLoggingConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      memorySize: map['memorySize'] as int,
      qualifiedArn: map['qualifiedArn'] as String,
      qualifiedInvokeArn: map['qualifiedInvokeArn'] as String,
      qualifier: (() {
        final guardedValue = map['qualifier'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      region: map['region'] as String,
      reservedConcurrentExecutions: map['reservedConcurrentExecutions'] as int,
      responseStreamingInvokeArn: map['responseStreamingInvokeArn'] as String,
      role: map['role'] as String,
      runtime: map['runtime'] as String,
      signingJobArn: map['signingJobArn'] as String,
      signingProfileVersionArn: map['signingProfileVersionArn'] as String,
      sourceCodeHash: map['sourceCodeHash'] as String,
      sourceCodeSize: map['sourceCodeSize'] as int,
      sourceKmsKeyArn: map['sourceKmsKeyArn'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenancyConfigs: pulumi.Input.decodeList<GetFunctionTenancyConfig>(
        map['tenancyConfigs']!,
        (value) => GetFunctionTenancyConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      timeout: map['timeout'] as int,
      tracingConfig: GetFunctionTracingConfig.fromMap(
        (map['tracingConfig']! as Map).cast<String, dynamic>(),
      ),
      version: map['version'] as String,
      vpcConfig: GetFunctionVpcConfig.fromMap(
        (map['vpcConfig']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
