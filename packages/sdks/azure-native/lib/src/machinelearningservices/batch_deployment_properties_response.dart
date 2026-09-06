// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_pipeline_component_deployment_configuration_response.dart';
import 'batch_retry_settings_response.dart';
import 'code_configuration_response.dart';
import 'deployment_resource_configuration_response.dart';

/// Batch inference settings per deployment.
class BatchDeploymentPropertiesResponse {
  /// Code configuration for the endpoint deployment.
  final pulumi.Input<CodeConfigurationResponse?>? codeConfiguration;
  /// Compute target for batch inference operation.
  final pulumi.Input<String?>? compute;
  /// Properties relevant to different deployment types.
  final pulumi.Input<BatchPipelineComponentDeploymentConfigurationResponse?>? deploymentConfiguration;
  /// Description of the endpoint deployment.
  final pulumi.Input<String?>? description;
  /// ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  final pulumi.Input<String?>? environmentId;
  /// Environment variables configuration for the deployment.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Error threshold, if the error count for the entire input goes above this value,
  /// the batch inference will be aborted. Range is [-1, int.MaxValue].
  /// For FileDataset, this value is the count of file failures.
  /// For TabularDataset, this value is the count of record failures.
  /// If set to -1 (the lower bound), all failures during batch inference will be ignored.
  final pulumi.Input<int?>? errorThreshold;
  /// Log verbosity for batch inferencing.
  /// Increasing verbosity order for logging is : Warning, Info and Debug.
  /// The default value is Info.
  final pulumi.Input<String?>? loggingLevel;
  /// Indicates maximum number of parallelism per instance.
  final pulumi.Input<int?>? maxConcurrencyPerInstance;
  /// Size of the mini-batch passed to each batch invocation.
  /// For FileDataset, this is the number of files per mini-batch.
  /// For TabularDataset, this is the size of the records in bytes, per mini-batch.
  final pulumi.Input<double?>? miniBatchSize;
  /// Reference to the model asset for the endpoint deployment.
  final pulumi.Input<dynamic>? model;
  /// Enum to determine how batch inferencing will handle output
  final pulumi.Input<String?>? outputAction;
  /// Customized output file name for append_row output action.
  final pulumi.Input<String?>? outputFileName;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the endpoint deployment.
  final pulumi.Input<String> provisioningState;
  /// Indicates compute configuration for the job.
  /// If not provided, will default to the defaults defined in ResourceConfiguration.
  final pulumi.Input<DeploymentResourceConfigurationResponse?>? resources;
  /// Retry Settings for the batch inference operation.
  /// If not provided, will default to the defaults defined in BatchRetrySettings.
  final pulumi.Input<BatchRetrySettingsResponse?>? retrySettings;

  /// Creates a new [BatchDeploymentPropertiesResponse].
  /// [codeConfiguration] Code configuration for the endpoint deployment.
  /// [compute] Compute target for batch inference operation.
  /// [deploymentConfiguration] Properties relevant to different deployment types.
  /// [description] Description of the endpoint deployment.
  /// [environmentId] ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  /// [environmentVariables] Environment variables configuration for the deployment.
  /// [errorThreshold] Error threshold, if the error count for the entire input goes above this value,
  /// [loggingLevel] Log verbosity for batch inferencing.
  /// [maxConcurrencyPerInstance] Indicates maximum number of parallelism per instance.
  /// [miniBatchSize] Size of the mini-batch passed to each batch invocation.
  /// [model] Reference to the model asset for the endpoint deployment.
  /// [outputAction] Enum to determine how batch inferencing will handle output
  /// [outputFileName] Customized output file name for append_row output action.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the endpoint deployment.
  /// [resources] Indicates compute configuration for the job.
  /// [retrySettings] Retry Settings for the batch inference operation.
  BatchDeploymentPropertiesResponse({
    this.codeConfiguration,
    this.compute,
    this.deploymentConfiguration,
    this.description,
    this.environmentId,
    this.environmentVariables,
    pulumi.Input<int?>? errorThreshold,
    pulumi.Input<String?>? loggingLevel,
    pulumi.Input<int?>? maxConcurrencyPerInstance,
    pulumi.Input<double?>? miniBatchSize,
    this.model,
    pulumi.Input<String?>? outputAction,
    pulumi.Input<String?>? outputFileName,
    this.properties,
    required this.provisioningState,
    this.resources,
    this.retrySettings,
  }) : errorThreshold = errorThreshold ?? pulumi.Input.fromValue(-1), loggingLevel = loggingLevel ?? pulumi.Input.fromValue('Info'), maxConcurrencyPerInstance = maxConcurrencyPerInstance ?? pulumi.Input.fromValue(1), miniBatchSize = miniBatchSize ?? pulumi.Input.fromValue(10), outputAction = outputAction ?? pulumi.Input.fromValue('AppendRow'), outputFileName = outputFileName ?? pulumi.Input.fromValue('predictions.csv');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<CodeConfigurationResponse, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'compute': ?compute,
      'deploymentConfiguration': ?pulumi.Input.mapOptionalInputValue<BatchPipelineComponentDeploymentConfigurationResponse, Map<String, dynamic>>(deploymentConfiguration, (value) => value.toMap()),
      'description': ?description,
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'errorThreshold': ?errorThreshold,
      'loggingLevel': ?loggingLevel,
      'maxConcurrencyPerInstance': ?maxConcurrencyPerInstance,
      'miniBatchSize': ?miniBatchSize,
      'model': ?model,
      'outputAction': ?outputAction,
      'outputFileName': ?outputFileName,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'resources': ?pulumi.Input.mapOptionalInputValue<DeploymentResourceConfigurationResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'retrySettings': ?pulumi.Input.mapOptionalInputValue<BatchRetrySettingsResponse, Map<String, dynamic>>(retrySettings, (value) => value.toMap()),
    };
  }

  factory BatchDeploymentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BatchDeploymentPropertiesResponse(
      codeConfiguration: (() { final guardedValue = map['codeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CodeConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compute: (() { final guardedValue = map['compute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentConfiguration: (() { final guardedValue = map['deploymentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchPipelineComponentDeploymentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errorThreshold: (() { final guardedValue = map['errorThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      loggingLevel: (() { final guardedValue = map['loggingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConcurrencyPerInstance: (() { final guardedValue = map['maxConcurrencyPerInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      miniBatchSize: (() { final guardedValue = map['miniBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      outputAction: (() { final guardedValue = map['outputAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFileName: (() { final guardedValue = map['outputFileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentResourceConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retrySettings: (() { final guardedValue = map['retrySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BatchRetrySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
