// ignore_for_file: unused_element, unnecessary_cast

import '../ai_endpoint_with_model_garden_deployment_endpoint_config_private_service_connect_config_psc_automation_configs/ai_endpoint_with_model_garden_deployment_endpoint_config_private_service_connect_config_psc_automation_configs.dart';

class AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig {
  /// Required. If true, expose the IndexEndpoint via private service connect.
  final bool enablePrivateServiceConnect;

  /// A list of Projects from which the forwarding rule will target the service attachment.
  final List<String>? projectAllowlists;

  /// PSC config that is used to automatically create PSC endpoints in the user projects.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs?
      pscAutomationConfigs;

  /// (Output)
  /// Output only. The name of the generated service attachment resource.
  /// This is only populated if the endpoint is deployed with PrivateServiceConnect.
  final String? serviceAttachment;

  AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlists,
    this.pscAutomationConfigs,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enablePrivateServiceConnect'] = enablePrivateServiceConnect;
    final projectAllowlistsValue = projectAllowlists;
    if (projectAllowlistsValue != null) {
      map['projectAllowlists'] = projectAllowlistsValue;
    }
    final pscAutomationConfigsValue = pscAutomationConfigs;
    if (pscAutomationConfigsValue != null) {
      map['pscAutomationConfigs'] = pscAutomationConfigsValue.toMap();
    }
    final serviceAttachmentValue = serviceAttachment;
    if (serviceAttachmentValue != null) {
      map['serviceAttachment'] = serviceAttachmentValue;
    }
    return map;
  }

  factory AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig(
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      projectAllowlists: map['projectAllowlists'] == null
          ? null
          : (map['projectAllowlists'] as List).cast<String>(),
      pscAutomationConfigs: map['pscAutomationConfigs'] == null
          ? null
          : AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigs
              .fromMap(
                  (map['pscAutomationConfigs'] as Map).cast<String, dynamic>()),
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
