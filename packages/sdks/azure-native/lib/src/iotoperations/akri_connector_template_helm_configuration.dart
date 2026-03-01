// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_helm_configuration_settings.dart';

/// AkriConnectorTemplateHelmConfiguration properties.
class AkriConnectorTemplateHelmConfiguration {
  /// The Helm configuration settings.
  final AkriConnectorTemplateHelmConfigurationSettings helmConfigurationSettings;
  /// Runtime configuration types.
  /// Expected value is 'HelmConfiguration'.
  final String runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateHelmConfiguration].
  /// [helmConfigurationSettings] The Helm configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  AkriConnectorTemplateHelmConfiguration({
    required this.helmConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'helmConfigurationSettings': helmConfigurationSettings.toMap(),
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateHelmConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmConfiguration(
      helmConfigurationSettings: AkriConnectorTemplateHelmConfigurationSettings.fromMap((map['helmConfigurationSettings'] as Map).cast<String, dynamic>()),
      runtimeConfigurationType: map['runtimeConfigurationType'] as String,
    );
  }
}

