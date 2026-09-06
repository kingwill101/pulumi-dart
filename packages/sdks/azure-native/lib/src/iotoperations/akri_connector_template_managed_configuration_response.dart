// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateManagedConfiguration properties.
class AkriConnectorTemplateManagedConfigurationResponse {
  /// The managed configuration settings.
  final pulumi.Input<dynamic> managedConfigurationSettings;
  /// Runtime configuration types.
  /// Expected value is 'ManagedConfiguration'.
  final pulumi.Input<String> runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateManagedConfigurationResponse].
  /// [managedConfigurationSettings] The managed configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  const AkriConnectorTemplateManagedConfigurationResponse({
    required this.managedConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedConfigurationSettings': managedConfigurationSettings,
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateManagedConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateManagedConfigurationResponse(
      managedConfigurationSettings: pulumi.Input.fromValue(map['managedConfigurationSettings']),
      runtimeConfigurationType: pulumi.Input.fromValue(map['runtimeConfigurationType'] as String),
    );
  }
}
