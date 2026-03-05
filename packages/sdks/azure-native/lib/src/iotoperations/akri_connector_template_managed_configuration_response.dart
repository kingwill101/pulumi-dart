// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_runtime_image_configuration_response.dart';

/// AkriConnectorTemplateManagedConfiguration properties.
class AkriConnectorTemplateManagedConfigurationResponse {
  /// The managed configuration settings.
  final pulumi.Input<AkriConnectorTemplateRuntimeImageConfigurationResponse> managedConfigurationSettings;
  /// Runtime configuration types.
  /// Expected value is 'ManagedConfiguration'.
  final pulumi.Input<String> runtimeConfigurationType;

  /// Creates a new [AkriConnectorTemplateManagedConfigurationResponse].
  /// [managedConfigurationSettings] The managed configuration settings.
  /// [runtimeConfigurationType] Runtime configuration types.
  AkriConnectorTemplateManagedConfigurationResponse({
    required this.managedConfigurationSettings,
    required this.runtimeConfigurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedConfigurationSettings': pulumi.Input.mapInputValue<AkriConnectorTemplateRuntimeImageConfigurationResponse, Map<String, dynamic>>(managedConfigurationSettings, (value) => value.toMap()),
      'runtimeConfigurationType': runtimeConfigurationType,
    };
  }

  factory AkriConnectorTemplateManagedConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateManagedConfigurationResponse(
      managedConfigurationSettings: pulumi.Input.fromValue(AkriConnectorTemplateRuntimeImageConfigurationResponse.fromMap((map['managedConfigurationSettings']! as Map).cast<String, dynamic>())),
      runtimeConfigurationType: pulumi.Input.fromValue(map['runtimeConfigurationType'] as String),
    );
  }
}

