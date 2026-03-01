// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_helm_advanced_configuration.dart';
import 'akri_connector_template_helm_container_registry.dart';

/// AkriConnectorTemplateHelmConfiguration properties.
class AkriConnectorTemplateHelmConfigurationSettings {
  /// Advanced configuration for the Helm chart.
  /// Install, upgrade, and uninstall options for the helm chart such as atomic, wait, timeout, `wait_for_jobs`, and `disable_hooks`.
  final AkriConnectorTemplateHelmAdvancedConfiguration? advancedConfiguration;
  /// The registry settings for the helm chart to be used.
  final AkriConnectorTemplateHelmContainerRegistry? registrySettings;
  /// The release name of the Helm chart.
  final String releaseName;
  /// The name of the repository
  final String repositoryName;
  /// A map of values to pass to the helm chart.
  final Map<String, String>? values;
  /// The version of the Helm chart.
  final String version;

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
      'advancedConfiguration': ?advancedConfiguration == null ? null : advancedConfiguration!.toMap(),
      'registrySettings': ?registrySettings == null ? null : registrySettings!.toMap(),
      'releaseName': releaseName,
      'repositoryName': repositoryName,
      'values': ?values,
      'version': version,
    };
  }

  factory AkriConnectorTemplateHelmConfigurationSettings.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmConfigurationSettings(
      advancedConfiguration: map['advancedConfiguration'] == null ? null : AkriConnectorTemplateHelmAdvancedConfiguration.fromMap((map['advancedConfiguration'] as Map).cast<String, dynamic>()),
      registrySettings: map['registrySettings'] == null ? null : AkriConnectorTemplateHelmContainerRegistry.fromMap((map['registrySettings'] as Map).cast<String, dynamic>()),
      releaseName: map['releaseName'] as String,
      repositoryName: map['repositoryName'] as String,
      values: map['values'] == null ? null : (map['values'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}

