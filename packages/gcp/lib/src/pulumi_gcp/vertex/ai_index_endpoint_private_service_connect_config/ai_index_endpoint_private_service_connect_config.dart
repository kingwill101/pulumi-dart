// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_index_endpoint_private_service_connect_config_psc_automation_config/ai_index_endpoint_private_service_connect_config_psc_automation_config.dart';

class AiIndexEndpointPrivateServiceConnectConfig {
  /// If set to true, the IndexEndpoint is created without private service access.
  final bool enablePrivateServiceConnect;

  /// A list of Projects from which the forwarding rule will target the service attachment.
  final List<String>? projectAllowlists;

  /// List of projects and networks where the PSC endpoints will be created. This field is used by Online Inference(Prediction) only.
  /// Structure is documented below.
  final List<AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig>?
      pscAutomationConfigs;

  AiIndexEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlists,
    this.pscAutomationConfigs,
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
      map['pscAutomationConfigs'] = Input.encodeList<
              AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig,
              Map<String, dynamic>>(
          pscAutomationConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AiIndexEndpointPrivateServiceConnectConfig.fromMap(
      Map<String, dynamic> map) {
    return AiIndexEndpointPrivateServiceConnectConfig(
      enablePrivateServiceConnect: map['enablePrivateServiceConnect'] as bool,
      projectAllowlists: map['projectAllowlists'] == null
          ? null
          : (map['projectAllowlists'] as List).cast<String>(),
      pscAutomationConfigs: map['pscAutomationConfigs'] == null
          ? null
          : Input.decodeList<
                  AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig>(
              map['pscAutomationConfigs'],
              (value) =>
                  AiIndexEndpointPrivateServiceConnectConfigPscAutomationConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
