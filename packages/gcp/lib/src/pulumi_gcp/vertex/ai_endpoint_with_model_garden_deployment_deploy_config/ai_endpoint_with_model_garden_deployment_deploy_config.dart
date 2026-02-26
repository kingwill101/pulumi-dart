// ignore_for_file: unused_element, unnecessary_cast

import '../ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources/ai_endpoint_with_model_garden_deployment_deploy_config_dedicated_resources.dart';

class AiEndpointWithModelGardenDeploymentDeployConfig {
  /// A description of resources that are dedicated to a DeployedModel or
  /// DeployedIndex, and that need a higher degree of manual configuration.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources?
      dedicatedResources;

  /// If true, enable the QMT fast tryout feature for this model if possible.
  final bool? fastTryoutEnabled;

  /// System labels for Model Garden deployments.
  /// These labels are managed by Google and for tracking purposes only.
  final Map<String, String>? systemLabels;

  AiEndpointWithModelGardenDeploymentDeployConfig({
    this.dedicatedResources,
    this.fastTryoutEnabled,
    this.systemLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dedicatedResourcesValue = dedicatedResources;
    if (dedicatedResourcesValue != null) {
      map['dedicatedResources'] = dedicatedResourcesValue.toMap();
    }
    final fastTryoutEnabledValue = fastTryoutEnabled;
    if (fastTryoutEnabledValue != null) {
      map['fastTryoutEnabled'] = fastTryoutEnabledValue;
    }
    final systemLabelsValue = systemLabels;
    if (systemLabelsValue != null) {
      map['systemLabels'] = systemLabelsValue;
    }
    return map;
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfig.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfig(
      dedicatedResources: map['dedicatedResources'] == null
          ? null
          : AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResources
              .fromMap(
                  (map['dedicatedResources'] as Map).cast<String, dynamic>()),
      fastTryoutEnabled: map['fastTryoutEnabled'] == null
          ? null
          : map['fastTryoutEnabled'] as bool,
      systemLabels: map['systemLabels'] == null
          ? null
          : (map['systemLabels'] as Map).cast<String, String>(),
    );
  }
}
