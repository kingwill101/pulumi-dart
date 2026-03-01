// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_runtime_image_configuration_response.dart';

/// AkriConnectorTemplateManagedConfiguration properties.
class AkriConnectorTemplateManagedConfigurationResponse {
  /// The managed configuration settings.
  final AkriConnectorTemplateRuntimeImageConfigurationResponse managedConfigurationSettings;
  /// Runtime configuration types.
  /// Expected value is 'ManagedConfiguration'.
  final String runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateManagedConfigurationResponse].
  /// [managedConfigurationSettings] The managed configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  AkriConnectorTemplateManagedConfigurationResponse({
    required this.managedConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedConfigurationSettings': managedConfigurationSettings.toMap(),
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateManagedConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateManagedConfigurationResponse(
      managedConfigurationSettings: AkriConnectorTemplateRuntimeImageConfigurationResponse.fromMap((map['managedConfigurationSettings'] as Map).cast<String, dynamic>()),
      runtimeConfigurationType: map['runtimeConfigurationType'] as String,
    );
  }
}

