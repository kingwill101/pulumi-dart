// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_advanced_configuration_response.dart';

/// AkriConnectorTemplateHelmConfiguration properties.
class AkriConnectorTemplateHelmConfigurationSettingsResponse {
  /// Advanced configuration for the Helm chart.
  /// Install, upgrade, and uninstall options for the helm chart such as atomic, wait, timeout, `wait_for_jobs`, and `disable_hooks`.
  final pulumi.Input<AkriConnectorTemplateHelmAdvancedConfigurationResponse?>? advancedConfiguration;
  /// The registry settings for the helm chart to be used.
  final pulumi.Input<dynamic>? registrySettings;
  /// The release name of the Helm chart.
  final pulumi.Input<String> releaseName;
  /// The name of the repository
  final pulumi.Input<String> repositoryName;
  /// A map of values to pass to the helm chart.
  final pulumi.Input<Map<String, String>?>? values;
  /// The version of the Helm chart.
  final pulumi.Input<String> version;

  /// Creates a new [AkriConnectorTemplateHelmConfigurationSettingsResponse].
  /// [advancedConfiguration] Advanced configuration for the Helm chart.
  /// [registrySettings] The registry settings for the helm chart to be used.
  /// [releaseName] The release name of the Helm chart.
  /// [repositoryName] The name of the repository
  /// [values] A map of values to pass to the helm chart.
  /// [version] The version of the Helm chart.
  const AkriConnectorTemplateHelmConfigurationSettingsResponse({
    this.advancedConfiguration,
    this.registrySettings,
    required this.releaseName,
    required this.repositoryName,
    this.values,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfiguration': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmAdvancedConfigurationResponse, Map<String, dynamic>>(advancedConfiguration, (value) => value.toMap()),
      'registrySettings': ?registrySettings,
      'releaseName': releaseName,
      'repositoryName': repositoryName,
      'values': ?values,
      'version': version,
    };
  }

  factory AkriConnectorTemplateHelmConfigurationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmConfigurationSettingsResponse(
      advancedConfiguration: (() { final guardedValue = map['advancedConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AkriConnectorTemplateHelmAdvancedConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registrySettings: (() { final guardedValue = map['registrySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      releaseName: pulumi.Input.fromValue(map['releaseName'] as String),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
