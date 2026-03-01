// ignore_for_file: unused_element, unnecessary_cast

import 'id_asset_reference_response.dart';

/// Properties for a Batch Pipeline Component Deployment.
class BatchPipelineComponentDeploymentConfigurationResponse {
  /// The ARM id of the component to be run.
  final IdAssetReferenceResponse? componentId;
  /// The enumerated property types for batch deployments.
  /// Expected value is 'PipelineComponent'.
  final String deploymentConfigurationType;
  /// The description which will be applied to the job.
  final String? description;
  /// Run-time settings for the pipeline job.
  final Map<String, String>? settings;
  /// The tags which will be applied to the job.
  final Map<String, String>? tags;

  /// Creates a new [BatchPipelineComponentDeploymentConfigurationResponse].
  /// [componentId] The ARM id of the component to be run.
  /// [deploymentConfigurationType] The enumerated property types for batch deployments.
  /// [description] The description which will be applied to the job.
  /// [settings] Run-time settings for the pipeline job.
  /// [tags] The tags which will be applied to the job.
  BatchPipelineComponentDeploymentConfigurationResponse({
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

  factory BatchPipelineComponentDeploymentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BatchPipelineComponentDeploymentConfigurationResponse(
      componentId: map['componentId'] == null ? null : IdAssetReferenceResponse.fromMap((map['componentId'] as Map).cast<String, dynamic>()),
      deploymentConfigurationType: map['deploymentConfigurationType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      settings: map['settings'] == null ? null : (map['settings'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

