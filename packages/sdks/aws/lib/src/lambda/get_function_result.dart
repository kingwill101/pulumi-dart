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
  final List<String>? architectures;
  /// ARN of the Amazon EFS Access Point that provides access to the file system.
  final String? arn;
  /// Configuration for Lambda function's capacity provider. See `capacityProviderConfig` below.
  final List<GetFunctionCapacityProviderConfig>? capacityProviderConfigs;
  /// Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String? codeSha256;
  /// ARN for a Code Signing Configuration.
  final String? codeSigningConfigArn;
  /// Configuration for the function's dead letter queue. See `deadLetterConfig` below.
  final GetFunctionDeadLetterConfig? deadLetterConfig;
  /// Description of what your Lambda Function does.
  final String? description;
  /// Configuration for the function's durable settings. See `durableConfig` below.
  final List<GetFunctionDurableConfig>? durableConfigs;
  /// Lambda environment's configuration settings. See `environment` below.
  final GetFunctionEnvironment? environment;
  /// Amount of ephemeral storage (`/tmp`) allocated for the Lambda Function. See `ephemeralStorage` below.
  final List<GetFunctionEphemeralStorage>? ephemeralStorages;
  /// Connection settings for an Amazon EFS file system. See `fileSystemConfig` below.
  final List<GetFunctionFileSystemConfig>? fileSystemConfigs;
  final String? functionName;
  /// Function entrypoint in your code.
  final String? handler;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// URI of the container image.
  final String? imageUri;
  /// ARN to be used for invoking Lambda Function from API Gateway. **Note:** Starting with `v4.51.0` of the provider, this will not include the qualifier.
  final String? invokeArn;
  /// ARN for the KMS encryption key.
  final String? kmsKeyArn;
  /// Date this resource was last modified.
  final String? lastModified;
  /// List of Lambda Layer ARNs attached to your Lambda Function.
  final List<String>? layers;
  /// Advanced logging settings. See `loggingConfig` below.
  final List<GetFunctionLoggingConfig>? loggingConfigs;
  /// Amount of memory in MB your Lambda Function can use at runtime.
  final int? memorySize;
  /// Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN identifying your Lambda Function. See also `arn`.
  final String? qualifiedArn;
  /// Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN to be used for invoking Lambda Function from API Gateway. See also `invokeArn`.
  final String? qualifiedInvokeArn;
  final String? qualifier;
  final String? region;
  /// Amount of reserved concurrent executions for this Lambda function or `-1` if unreserved.
  final int? reservedConcurrentExecutions;
  /// ARN to be used for invoking Lambda Function from API Gateway with response streaming.
  final String? responseStreamingInvokeArn;
  /// IAM role attached to the Lambda Function.
  final String? role;
  /// Runtime environment for the Lambda function.
  final String? runtime;
  /// ARN of a signing job.
  final String? signingJobArn;
  /// ARN for a signing profile version.
  final String? signingProfileVersionArn;
  /// (**Deprecated** use `codeSha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  final String? sourceCodeHash;
  /// Size in bytes of the function .zip file.
  final int? sourceCodeSize;
  /// ARN of the KMS key used to encrypt the function's `.zip` deployment package.
  final String? sourceKmsKeyArn;
  /// Map of tags assigned to the Lambda Function.
  final Map<String, String>? tags;
  /// Tenancy settings of the function. See `tenancyConfig` below.
  final List<GetFunctionTenancyConfig>? tenancyConfigs;
  /// Function execution time at which Lambda should terminate the function.
  final int? timeout;
  /// Tracing settings of the function. See `tracingConfig` below.
  final GetFunctionTracingConfig? tracingConfig;
  /// Version of the Lambda function returned. If `qualifier` is not set, this will resolve to the most recent published version. If no published version of the function exists, `version` will resolve to `$LATEST`.
  final String? version;
  /// VPC configuration associated with your Lambda function. See `vpcConfig` below.
  final GetFunctionVpcConfig? vpcConfig;

  /// Creates a new [GetFunctionResult].
  /// [architectures] Instruction set architecture for the Lambda function.
  /// [arn] ARN of the Amazon EFS Access Point that provides access to the file system.
  /// [capacityProviderConfigs] Configuration for Lambda function's capacity provider. See `capacityProviderConfig` below.
  /// [codeSha256] Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [codeSigningConfigArn] ARN for a Code Signing Configuration.
  /// [deadLetterConfig] Configuration for the function's dead letter queue. See `deadLetterConfig` below.
  /// [description] Description of what your Lambda Function does.
  /// [durableConfigs] Configuration for the function's durable settings. See `durableConfig` below.
  /// [environment] Lambda environment's configuration settings. See `environment` below.
  /// [ephemeralStorages] Amount of ephemeral storage (`/tmp`) allocated for the Lambda Function. See `ephemeralStorage` below.
  /// [fileSystemConfigs] Connection settings for an Amazon EFS file system. See `fileSystemConfig` below.
  /// [functionName] Optional.
  /// [handler] Function entrypoint in your code.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageUri] URI of the container image.
  /// [invokeArn] ARN to be used for invoking Lambda Function from API Gateway. **Note:** Starting with `v4.51.0` of the provider, this will not include the qualifier.
  /// [kmsKeyArn] ARN for the KMS encryption key.
  /// [lastModified] Date this resource was last modified.
  /// [layers] List of Lambda Layer ARNs attached to your Lambda Function.
  /// [loggingConfigs] Advanced logging settings. See `loggingConfig` below.
  /// [memorySize] Amount of memory in MB your Lambda Function can use at runtime.
  /// [qualifiedArn] Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN identifying your Lambda Function. See also `arn`.
  /// [qualifiedInvokeArn] Qualified (`:QUALIFIER` or `:VERSION` suffix) ARN to be used for invoking Lambda Function from API Gateway. See also `invokeArn`.
  /// [qualifier] Optional.
  /// [region] Optional.
  /// [reservedConcurrentExecutions] Amount of reserved concurrent executions for this Lambda function or `-1` if unreserved.
  /// [responseStreamingInvokeArn] ARN to be used for invoking Lambda Function from API Gateway with response streaming.
  /// [role] IAM role attached to the Lambda Function.
  /// [runtime] Runtime environment for the Lambda function.
  /// [signingJobArn] ARN of a signing job.
  /// [signingProfileVersionArn] ARN for a signing profile version.
  /// [sourceCodeHash] (**Deprecated** use `codeSha256` instead) Base64-encoded representation of raw SHA-256 sum of the zip file.
  /// [sourceCodeSize] Size in bytes of the function .zip file.
  /// [sourceKmsKeyArn] ARN of the KMS key used to encrypt the function's `.zip` deployment package.
  /// [tags] Map of tags assigned to the Lambda Function.
  /// [tenancyConfigs] Tenancy settings of the function. See `tenancyConfig` below.
  /// [timeout] Function execution time at which Lambda should terminate the function.
  /// [tracingConfig] Tracing settings of the function. See `tracingConfig` below.
  /// [version] Version of the Lambda function returned. If `qualifier` is not set, this will resolve to the most recent published version. If no published version of the function exists, `version` will resolve to `$LATEST`.
  /// [vpcConfig] VPC configuration associated with your Lambda function. See `vpcConfig` below.
  const GetFunctionResult({
    this.architectures,
    this.arn,
    this.capacityProviderConfigs,
    this.codeSha256,
    this.codeSigningConfigArn,
    this.deadLetterConfig,
    this.description,
    this.durableConfigs,
    this.environment,
    this.ephemeralStorages,
    this.fileSystemConfigs,
    this.functionName,
    this.handler,
    this.id,
    this.imageUri,
    this.invokeArn,
    this.kmsKeyArn,
    this.lastModified,
    this.layers,
    this.loggingConfigs,
    this.memorySize,
    this.qualifiedArn,
    this.qualifiedInvokeArn,
    this.qualifier,
    this.region,
    this.reservedConcurrentExecutions,
    this.responseStreamingInvokeArn,
    this.role,
    this.runtime,
    this.signingJobArn,
    this.signingProfileVersionArn,
    this.sourceCodeHash,
    this.sourceCodeSize,
    this.sourceKmsKeyArn,
    this.tags,
    this.tenancyConfigs,
    this.timeout,
    this.tracingConfig,
    this.version,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architectures': ?architectures,
      'arn': ?arn,
      'capacityProviderConfigs': ?(() { final guardedValue = capacityProviderConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionCapacityProviderConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'codeSha256': ?codeSha256,
      'codeSigningConfigArn': ?codeSigningConfigArn,
      'deadLetterConfig': ?deadLetterConfig?.toMap(),
      'description': ?description,
      'durableConfigs': ?(() { final guardedValue = durableConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionDurableConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'environment': ?environment?.toMap(),
      'ephemeralStorages': ?(() { final guardedValue = ephemeralStorages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionEphemeralStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fileSystemConfigs': ?(() { final guardedValue = fileSystemConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionFileSystemConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'functionName': ?functionName,
      'handler': ?handler,
      'id': ?id,
      'imageUri': ?imageUri,
      'invokeArn': ?invokeArn,
      'kmsKeyArn': ?kmsKeyArn,
      'lastModified': ?lastModified,
      'layers': ?layers,
      'loggingConfigs': ?(() { final guardedValue = loggingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionLoggingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memorySize': ?memorySize,
      'qualifiedArn': ?qualifiedArn,
      'qualifiedInvokeArn': ?qualifiedInvokeArn,
      'qualifier': ?qualifier,
      'region': ?region,
      'reservedConcurrentExecutions': ?reservedConcurrentExecutions,
      'responseStreamingInvokeArn': ?responseStreamingInvokeArn,
      'role': ?role,
      'runtime': ?runtime,
      'signingJobArn': ?signingJobArn,
      'signingProfileVersionArn': ?signingProfileVersionArn,
      'sourceCodeHash': ?sourceCodeHash,
      'sourceCodeSize': ?sourceCodeSize,
      'sourceKmsKeyArn': ?sourceKmsKeyArn,
      'tags': ?tags,
      'tenancyConfigs': ?(() { final guardedValue = tenancyConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFunctionTenancyConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'timeout': ?timeout,
      'tracingConfig': ?tracingConfig?.toMap(),
      'version': ?version,
      'vpcConfig': ?vpcConfig?.toMap(),
    };
  }

  factory GetFunctionResult.fromMap(Map<String, dynamic> map) {
    return GetFunctionResult(
      architectures: (() { final guardedValue = map['architectures']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityProviderConfigs: (() { final guardedValue = map['capacityProviderConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionCapacityProviderConfig>(guardedValue, (value) => GetFunctionCapacityProviderConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      codeSha256: (() { final guardedValue = map['codeSha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
      codeSigningConfigArn: (() { final guardedValue = map['codeSigningConfigArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deadLetterConfig: (() { final guardedValue = map['deadLetterConfig']; if (guardedValue == null) return null; return GetFunctionDeadLetterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      durableConfigs: (() { final guardedValue = map['durableConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionDurableConfig>(guardedValue, (value) => GetFunctionDurableConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return GetFunctionEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ephemeralStorages: (() { final guardedValue = map['ephemeralStorages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionEphemeralStorage>(guardedValue, (value) => GetFunctionEphemeralStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      fileSystemConfigs: (() { final guardedValue = map['fileSystemConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionFileSystemConfig>(guardedValue, (value) => GetFunctionFileSystemConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      handler: (() { final guardedValue = map['handler']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invokeArn: (() { final guardedValue = map['invokeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      layers: (() { final guardedValue = map['layers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      loggingConfigs: (() { final guardedValue = map['loggingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionLoggingConfig>(guardedValue, (value) => GetFunctionLoggingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      memorySize: (() { final guardedValue = map['memorySize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      qualifiedArn: (() { final guardedValue = map['qualifiedArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      qualifiedInvokeArn: (() { final guardedValue = map['qualifiedInvokeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservedConcurrentExecutions: (() { final guardedValue = map['reservedConcurrentExecutions']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      responseStreamingInvokeArn: (() { final guardedValue = map['responseStreamingInvokeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingJobArn: (() { final guardedValue = map['signingJobArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingProfileVersionArn: (() { final guardedValue = map['signingProfileVersionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceCodeHash: (() { final guardedValue = map['sourceCodeHash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceCodeSize: (() { final guardedValue = map['sourceCodeSize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sourceKmsKeyArn: (() { final guardedValue = map['sourceKmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenancyConfigs: (() { final guardedValue = map['tenancyConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFunctionTenancyConfig>(guardedValue, (value) => GetFunctionTenancyConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tracingConfig: (() { final guardedValue = map['tracingConfig']; if (guardedValue == null) return null; return GetFunctionTracingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return GetFunctionVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
