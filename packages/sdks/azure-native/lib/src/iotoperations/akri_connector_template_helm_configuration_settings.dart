// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_advanced_configuration.dart';
import 'akri_connector_template_helm_container_registry.dart';

/// AkriConnectorTemplateHelmConfiguration properties.
class AkriConnectorTemplateHelmConfigurationSettings {
  /// Advanced configuration for the Helm chart.
  /// Install, upgrade, and uninstall options for the helm chart such as atomic, wait, timeout, `wait_for_jobs`, and `disable_hooks`.
  final pulumi.Input<AkriConnectorTemplateHelmAdvancedConfiguration>? advancedConfiguration;
  /// The registry settings for the helm chart to be used.
  final pulumi.Input<AkriConnectorTemplateHelmContainerRegistry>? registrySettings;
  /// The release name of the Helm chart.
  final pulumi.Input<String> releaseName;
  /// The name of the repository
  final pulumi.Input<String> repositoryName;
  /// A map of values to pass to the helm chart.
  final pulumi.Input<Map<String, String>>? values;
  /// The version of the Helm chart.
  final pulumi.Input<String> version;

  /// Creates a new [AkriConnectorTemplateHelmConfigurationSettings].
  /// [advancedConfiguration] Advanced configuration for the Helm chart.
  /// [registrySettings] The registry settings for the helm chart to be used.
  /// [releaseName] The release name of the Helm chart.
  /// [repositoryName] The name of the repository
  /// [values] A map of values to pass to the helm chart.
  /// [version] The version of the Helm chart.
  AkriConnectorTemplateHelmConfigurationSettings({
    this.advancedConfiguration,
    this.registrySettings,
    required this.releaseName,
    required this.repositoryName,
    this.values,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedConfiguration': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmAdvancedConfiguration, Map<String, dynamic>>(advancedConfiguration, (value) => value.toMap()),
      'registrySettings': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmContainerRegistry, Map<String, dynamic>>(registrySettings, (value) => value.toMap()),
      'releaseName': releaseName,
      'repositoryName': repositoryName,
      'values': ?values,
      'version': version,
    };
  }

  factory AkriConnectorTemplateHelmConfigurationSettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmConfigurationSettings(
      advancedConfiguration: map['advancedConfiguration'] == null ? null : (AkriConnectorTemplateHelmAdvancedConfiguration.fromMap((map['advancedConfiguration']! as Map).cast<String, dynamic>())).input(),
      registrySettings: map['registrySettings'] == null ? null : (AkriConnectorTemplateHelmContainerRegistry.fromMap((map['registrySettings']! as Map).cast<String, dynamic>())).input(),
      releaseName: (map['releaseName'] as String).input(),
      repositoryName: (map['repositoryName'] as String).input(),
      values: map['values'] == null ? null : ((map['values']! as Map).cast<String, String>()).input(),
      version: (map['version'] as String).input(),
    );
  }
}

