// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_configuration_settings_response.dart';

/// AkriConnectorTemplateHelmConfiguration properties.
class AkriConnectorTemplateHelmConfigurationResponse {
  /// The Helm configuration settings.
  final pulumi.Input<AkriConnectorTemplateHelmConfigurationSettingsResponse> helmConfigurationSettings;
  /// Runtime configuration types.
  /// Expected value is 'HelmConfiguration'.
  final pulumi.Input<String> runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateHelmConfigurationResponse].
  /// [helmConfigurationSettings] The Helm configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  AkriConnectorTemplateHelmConfigurationResponse({
    required this.helmConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'helmConfigurationSettings': pulumi.Input.mapInputValue<AkriConnectorTemplateHelmConfigurationSettingsResponse, Map<String, dynamic>>(helmConfigurationSettings, (value) => value.toMap()),
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateHelmConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmConfigurationResponse(
      helmConfigurationSettings: pulumi.Input.fromValue(AkriConnectorTemplateHelmConfigurationSettingsResponse.fromMap((map['helmConfigurationSettings']! as Map).cast<String, dynamic>())),
      runtimeConfigurationType: pulumi.Input.fromValue(map['runtimeConfigurationType'] as String),
    );
  }
}

