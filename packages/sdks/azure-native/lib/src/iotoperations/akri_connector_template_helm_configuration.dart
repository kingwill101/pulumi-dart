// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_configuration_settings.dart';

/// AkriConnectorTemplateHelmConfiguration properties.
class AkriConnectorTemplateHelmConfiguration {
  /// The Helm configuration settings.
  final pulumi.Input<AkriConnectorTemplateHelmConfigurationSettings>
  helmConfigurationSettings;

  /// Runtime configuration types.
  /// Expected value is 'HelmConfiguration'.
  final pulumi.Input<String> runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateHelmConfiguration].
  /// [helmConfigurationSettings] The Helm configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  AkriConnectorTemplateHelmConfiguration({
    required this.helmConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'helmConfigurationSettings':
          pulumi.Input.mapInputValue<
            AkriConnectorTemplateHelmConfigurationSettings,
            Map<String, dynamic>
          >(helmConfigurationSettings, (value) => value.toMap()),
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateHelmConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AkriConnectorTemplateHelmConfiguration(
      helmConfigurationSettings: pulumi.Input.fromValue(
        AkriConnectorTemplateHelmConfigurationSettings.fromMap(
          (map['helmConfigurationSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      runtimeConfigurationType: pulumi.Input.fromValue(
        map['runtimeConfigurationType'] as String,
      ),
    );
  }
}
