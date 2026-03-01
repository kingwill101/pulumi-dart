// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_runtime_image_configuration.dart';

/// AkriConnectorTemplateManagedConfiguration properties.
class AkriConnectorTemplateManagedConfiguration {
  /// The managed configuration settings.
  final AkriConnectorTemplateRuntimeImageConfiguration managedConfigurationSettings;
  /// Runtime configuration types.
  /// Expected value is 'ManagedConfiguration'.
  final String runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateManagedConfiguration].
  /// [managedConfigurationSettings] The managed configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  AkriConnectorTemplateManagedConfiguration({
    required this.managedConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedConfigurationSettings': managedConfigurationSettings.toMap(),
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateManagedConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateManagedConfiguration(
      managedConfigurationSettings: AkriConnectorTemplateRuntimeImageConfiguration.fromMap((map['managedConfigurationSettings'] as Map).cast<String, dynamic>()),
      runtimeConfigurationType: map['runtimeConfigurationType'] as String,
    );
  }
}

