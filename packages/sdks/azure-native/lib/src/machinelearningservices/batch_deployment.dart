// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_pipeline_component_deployment_configuration.dart';
import 'batch_retry_settings.dart';
import 'code_configuration.dart';
import 'data_path_asset_reference.dart';
import 'deployment_resource_configuration.dart';

/// Batch inference settings per deployment.
class BatchDeployment {
  /// Code configuration for the endpoint deployment.
  final pulumi.Input<CodeConfiguration>? codeConfiguration;

  /// Compute target for batch inference operation.
  final pulumi.Input<String>? compute;

  /// Properties relevant to different deployment types.
  final pulumi.Input<BatchPipelineComponentDeploymentConfiguration>?
  deploymentConfiguration;

  /// Description of the endpoint deployment.
  final pulumi.Input<String>? description;

  /// ARM resource ID or AssetId of the environment specification for the endpoint deployment.
  final pulumi.Input<String>? environmentId;

  /// Environment variables configuration for the deployment.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// Error threshold, if the error count for the entire input goes above this value,
  /// the batch inference will be aborted. Range is [-1, int.MaxValue].
  /// For FileDataset, this value is the count of file failures.
  /// For TabularDataset, this value is the count of record failures.
  /// If set to -1 (the lower bound), all failures during batch inference will be ignored.
  final pulumi.Input<int>? errorThreshold;

  /// Logging level for batch inference operation.
  final pulumi.Input<String>? loggingLevel;

  /// Indicates maximum number of parallelism per instance.
  final pulumi.Input<int>? maxConcurrencyPerInstance;

  /// Size of the mini-batch passed to each batch invocation.
  /// For FileDataset, this is the number of files per mini-batch.
  /// For TabularDataset, this is the size of the records in bytes, per mini-batch.
  final pulumi.Input<double>? miniBatchSize;

  /// Reference to the model asset for the endpoint deployment.
  final pulumi.Input<DataPathAssetReference>? model;

  /// Indicates how the output will be organized.
  final pulumi.Input<String>? outputAction;

  /// Customized output file name for append_row output action.
  final pulumi.Input<String>? outputFileName;

  /// Property dictionary. Properties can be added, but not removed or altered.
  final pulumi.Input<Map<String, String>>? properties;

  /// Indicates compute configuration for the job.
  /// If not provided, will default to the defaults defined in ResourceConfiguration.
  final pulumi.Input<DeploymentResourceConfiguration>? resources;

  /// Retry Settings for the batch inference operation.
  /// If not provided, will default to the defaults defined in BatchRetrySettings.
  final pulumi.Input<BatchRetrySettings>? retrySettings;

  /// Creates a new [BatchDeployment].
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
  /// [resources] Indicates compute configuration for the job.
  /// [retrySettings] Retry Settings for the batch inference operation.
  BatchDeployment({
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
    this.resources,
    this.retrySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CodeConfiguration,
            Map<String, dynamic>
          >(codeConfiguration, (value) => value.toMap()),
      'compute': ?compute,
      'deploymentConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            BatchPipelineComponentDeploymentConfiguration,
            Map<String, dynamic>
          >(deploymentConfiguration, (value) => value.toMap()),
      'description': ?description,
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'errorThreshold': ?errorThreshold,
      'loggingLevel': ?loggingLevel,
      'maxConcurrencyPerInstance': ?maxConcurrencyPerInstance,
      'miniBatchSize': ?miniBatchSize,
      'model':
          ?pulumi.Input.mapOptionalInputValue<
            DataPathAssetReference,
            Map<String, dynamic>
          >(model, (value) => value.toMap()),
      'outputAction': ?outputAction,
      'outputFileName': ?outputFileName,
      'properties': ?properties,
      'resources':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentResourceConfiguration,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
      'retrySettings':
          ?pulumi.Input.mapOptionalInputValue<
            BatchRetrySettings,
            Map<String, dynamic>
          >(retrySettings, (value) => value.toMap()),
    };
  }

  factory BatchDeployment.fromMap(Map<String, dynamic> map) {
    return BatchDeployment(
      codeConfiguration: (() {
        final guardedValue = map['codeConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CodeConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      compute: (() {
        final guardedValue = map['compute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deploymentConfiguration: (() {
        final guardedValue = map['deploymentConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchPipelineComponentDeploymentConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      errorThreshold: (() {
        final guardedValue = map['errorThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loggingLevel: (() {
        final guardedValue = map['loggingLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxConcurrencyPerInstance: (() {
        final guardedValue = map['maxConcurrencyPerInstance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      miniBatchSize: (() {
        final guardedValue = map['miniBatchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      model: (() {
        final guardedValue = map['model'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataPathAssetReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      outputAction: (() {
        final guardedValue = map['outputAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFileName: (() {
        final guardedValue = map['outputFileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentResourceConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      retrySettings: (() {
        final guardedValue = map['retrySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BatchRetrySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
