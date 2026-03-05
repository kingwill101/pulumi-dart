// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_runtime_image_configuration.dart';

/// AkriConnectorTemplateManagedConfiguration properties.
class AkriConnectorTemplateManagedConfiguration {
  /// The managed configuration settings.
  final pulumi.Input<AkriConnectorTemplateRuntimeImageConfiguration> managedConfigurationSettings;
  /// Runtime configuration types.
  /// Expected value is 'ManagedConfiguration'.
  final pulumi.Input<String> runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateManagedConfiguration].
  /// [managedConfigurationSettings] The managed configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  AkriConnectorTemplateManagedConfiguration({
    required this.managedConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedConfigurationSettings': pulumi.Input.mapInputValue<AkriConnectorTemplateRuntimeImageConfiguration, Map<String, dynamic>>(managedConfigurationSettings, (value) => value.toMap()),
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateManagedConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateManagedConfiguration(
      managedConfigurationSettings: pulumi.Input.fromValue(AkriConnectorTemplateRuntimeImageConfiguration.fromMap((map['managedConfigurationSettings']! as Map).cast<String, dynamic>())),
      runtimeConfigurationType: pulumi.Input.fromValue(map['runtimeConfigurationType'] as String),
    );
  }
}

