// ignore_for_file: unused_element, unnecessary_cast

import 'id_asset_reference.dart';

/// Properties for a Batch Pipeline Component Deployment.
class BatchPipelineComponentDeploymentConfiguration {
  /// The ARM id of the component to be run.
  final IdAssetReference? componentId;
  /// The enumerated property types for batch deployments.
  /// Expected value is 'PipelineComponent'.
  final String deploymentConfigurationType;
  /// The description which will be applied to the job.
  final String? description;
  /// Run-time settings for the pipeline job.
  final Map<String, String>? settings;
  /// The tags which will be applied to the job.
  final Map<String, String>? tags;

  /// Creates a new [BatchPipelineComponentDeploymentConfiguration].
  /// [componentId] The ARM id of the component to be run.
  /// [deploymentConfigurationType] The enumerated property types for batch deployments.
  /// [description] The description which will be applied to the job.
  /// [settings] Run-time settings for the pipeline job.
  /// [tags] The tags which will be applied to the job.
  BatchPipelineComponentDeploymentConfiguration({
    this.componentId,
    required this.deploymentConfigurationType,
    this.description,
    this.settings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId == null ? null : componentId!.toMap(),
      'deploymentConfigurationType': deploymentConfigurationType,
      'description': ?description,
      'settings': ?settings,
      'tags': ?tags,
    };
  }

  factory BatchPipelineComponentDeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return BatchPipelineComponentDeploymentConfiguration(
      componentId: map['componentId'] == null ? null : IdAssetReference.fromMap((map['componentId'] as Map).cast<String, dynamic>()),
      deploymentConfigurationType: map['deploymentConfigurationType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      settings: map['settings'] == null ? null : (map['settings'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

