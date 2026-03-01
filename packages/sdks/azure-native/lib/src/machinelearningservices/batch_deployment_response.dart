// ignore_for_file: unused_element, unnecessary_cast

import 'batch_pipeline_component_deployment_configuration_response.dart';
import 'batch_retry_settings_response.dart';
import 'code_configuration_response.dart';
import 'data_path_asset_reference_response.dart';
import 'deployment_resource_configuration_response.dart';

/// Batch inference settings per deployment.
class BatchDeploymentResponse {
  /// Code configuration for the endpoint deployment.
  final CodeConfigurationResponse? codeConfiguration;
  /// Compute target for batch inference operation.
  final String? compute;
  /// Properties relevant to different deployment types.
  final BatchPipelineComponentDeploymentConfigurationResponse? deploymentConfiguration;
  /// Description of the endpoint deployment.
  final String? description;
  /// ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  final String? environmentId;
  /// Environment variables configuration for the deployment.
  final Map<String, String>? environmentVariables;
  /// Error threshold, if the error count for the entire input goes above this value,
  /// the batch inference will be aborted. Range is [-1, int.MaxValue].
  /// For FileDataset, this value is the count of file failures.
  /// For TabularDataset, this value is the count of record failures.
  /// If set to -1 (the lower bound), all failures during batch inference will be ignored.
  final int? errorThreshold;
  /// Logging level for batch inference operation.
  final String? loggingLevel;
  /// Indicates maximum number of parallelism per instance.
  final int? maxConcurrencyPerInstance;
  /// Size of the mini-batch passed to each batch invocation.
  /// For FileDataset, this is the number of files per mini-batch.
  /// For TabularDataset, this is the size of the records in bytes, per mini-batch.
  final double? miniBatchSize;
  /// Reference to the model asset for the endpoint deployment.
  final DataPathAssetReferenceResponse? model;
  /// Indicates how the output will be organized.
  final String? outputAction;
  /// Customized output file name for append_row output action.
  final String? outputFileName;
  /// Property dictionary. Properties can be added, but not removed or altered.
  final Map<String, String>? properties;
  /// Provisioning state for the endpoint deployment.
  final String provisioningState;
  /// Indicates compute configuration for the job.
  /// If not provided, will default to the defaults defined in ResourceConfiguration.
  final DeploymentResourceConfigurationResponse? resources;
  /// Retry Settings for the batch inference operation.
  /// If not provided, will default to the defaults defined in BatchRetrySettings.
  final BatchRetrySettingsResponse? retrySettings;

  /// Creates a new [BatchDeploymentResponse].
  /// [codeConfiguration] Code configuration for the endpoint deployment.
  /// [compute] Compute target for batch inference operation.
  /// [deploymentConfiguration] Properties relevant to different deployment types.
  /// [description] Description of the endpoint deployment.
  /// [environmentId] ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  /// [environmentVariables] Environment variables configuration for the deployment.
  /// [errorThreshold] Error threshold, if the error count for the entire input goes above this value,
  /// [loggingLevel] Logging level for batch inference operation.
  /// [maxConcurrencyPerInstance] Indicates maximum number of parallelism per instance.
  /// [miniBatchSize] Size of the mini-batch passed to each batch invocation.
  /// [model] Reference to the model asset for the endpoint deployment.
  /// [outputAction] Indicates how the output will be organized.
  /// [outputFileName] Customized output file name for append_row output action.
  /// [properties] Property dictionary. Properties can be added, but not removed or altered.
  /// [provisioningState] Provisioning state for the endpoint deployment.
  /// [resources] Indicates compute configuration for the job.
  /// [retrySettings] Retry Settings for the batch inference operation.
  BatchDeploymentResponse({
    this.codeConfiguration,
    this.compute,
    this.deploymentConfiguration,
    this.description,
    this.environmentId,
    this.environmentVariables,
    this.errorThreshold,
    this.loggingLevel,
    this.maxConcurrencyPerInstance,
    this.miniBatchSize,
    this.model,
    this.outputAction,
    this.outputFileName,
    this.properties,
    required this.provisioningState,
    this.resources,
    this.retrySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?codeConfiguration == null ? null : codeConfiguration!.toMap(),
      'compute': ?compute,
      'deploymentConfiguration': ?deploymentConfiguration == null ? null : deploymentConfiguration!.toMap(),
      'description': ?description,
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'errorThreshold': ?errorThreshold,
      'loggingLevel': ?loggingLevel,
      'maxConcurrencyPerInstance': ?maxConcurrencyPerInstance,
      'miniBatchSize': ?miniBatchSize,
      'model': ?model == null ? null : model!.toMap(),
      'outputAction': ?outputAction,
      'outputFileName': ?outputFileName,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'resources': ?resources == null ? null : resources!.toMap(),
      'retrySettings': ?retrySettings == null ? null : retrySettings!.toMap(),
    };
  }

  factory BatchDeploymentResponse.fromMap(Map<String, dynamic> map) {
    return BatchDeploymentResponse(
      codeConfiguration: map['codeConfiguration'] == null ? null : CodeConfigurationResponse.fromMap((map['codeConfiguration'] as Map).cast<String, dynamic>()),
      compute: map['compute'] == null ? null : map['compute'] as String,
      deploymentConfiguration: map['deploymentConfiguration'] == null ? null : BatchPipelineComponentDeploymentConfigurationResponse.fromMap((map['deploymentConfiguration'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      errorThreshold: map['errorThreshold'] == null ? null : map['errorThreshold'] as int,
      loggingLevel: map['loggingLevel'] == null ? null : map['loggingLevel'] as String,
      maxConcurrencyPerInstance: map['maxConcurrencyPerInstance'] == null ? null : map['maxConcurrencyPerInstance'] as int,
      miniBatchSize: map['miniBatchSize'] == null ? null : map['miniBatchSize'] as double,
      model: map['model'] == null ? null : DataPathAssetReferenceResponse.fromMap((map['model'] as Map).cast<String, dynamic>()),
      outputAction: map['outputAction'] == null ? null : map['outputAction'] as String,
      outputFileName: map['outputFileName'] == null ? null : map['outputFileName'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      resources: map['resources'] == null ? null : DeploymentResourceConfigurationResponse.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      retrySettings: map['retrySettings'] == null ? null : BatchRetrySettingsResponse.fromMap((map['retrySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

