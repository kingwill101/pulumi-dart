// ignore_for_file: unused_element, unnecessary_cast

import 'ai_endpoint_with_model_garden_deployment_endpoint_config_private_service_connect_config.dart';

class AiEndpointWithModelGardenDeploymentEndpointConfig {
  /// If true, the endpoint will be exposed through a dedicated
  /// DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS
  /// will be isolated from other users' traffic and will have better
  /// performance and reliability. Note: Once you enabled dedicated endpoint,
  /// you won't be able to send request to the shared DNS
  /// {region}-aiplatform.googleapis.com. The limitations will be removed soon.
  final bool? dedicatedEndpointEnabled;

  /// The user-specified display name of the endpoint. If not set, a
  /// default name will be used.
  final String? endpointDisplayName;

  /// The configuration for Private Service Connect (PSC).
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig?
      privateServiceConnectConfig;

  /// Creates a new [AiEndpointWithModelGardenDeploymentEndpointConfig].
  /// [dedicatedEndpointEnabled] If true, the endpoint will be exposed through a dedicated
  /// [endpointDisplayName] The user-specified display name of the endpoint. If not set, a
  /// [privateServiceConnectConfig] The configuration for Private Service Connect (PSC).
  AiEndpointWithModelGardenDeploymentEndpointConfig({
    this.dedicatedEndpointEnabled,
    this.endpointDisplayName,
    this.privateServiceConnectConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dedicatedEndpointEnabledValue = dedicatedEndpointEnabled;
    if (dedicatedEndpointEnabledValue != null) {
      map['dedicatedEndpointEnabled'] = dedicatedEndpointEnabledValue;
    }
    final endpointDisplayNameValue = endpointDisplayName;
    if (endpointDisplayNameValue != null) {
      map['endpointDisplayName'] = endpointDisplayNameValue;
    }
    final privateServiceConnectConfigValue = privateServiceConnectConfig;
    if (privateServiceConnectConfigValue != null) {
      map['privateServiceConnectConfig'] =
          privateServiceConnectConfigValue.toMap();
    }
    return map;
  }

  factory AiEndpointWithModelGardenDeploymentEndpointConfig.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentEndpointConfig(
      dedicatedEndpointEnabled: map['dedicatedEndpointEnabled'] == null
          ? null
          : map['dedicatedEndpointEnabled'] as bool,
      endpointDisplayName: map['endpointDisplayName'] == null
          ? null
          : map['endpointDisplayName'] as String,
      privateServiceConnectConfig: map['privateServiceConnectConfig'] == null
          ? null
          : AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfig
              .fromMap((map['privateServiceConnectConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
