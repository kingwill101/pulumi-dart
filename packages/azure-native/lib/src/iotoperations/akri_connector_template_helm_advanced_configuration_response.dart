// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_helm_delete_configuration_response.dart';
import 'akri_connector_template_helm_install_configuration_response.dart';
import 'akri_connector_template_helm_upgrade_configuration_response.dart';

/// AkriConnectorTemplateHelmAdvancedConfiguration properties.
class AkriConnectorTemplateHelmAdvancedConfigurationResponse {
  /// Delete operation configuration for the Helm chart.
  final AkriConnectorTemplateHelmDeleteConfigurationResponse? delete;
  /// Install operation configuration for the Helm chart.
  final AkriConnectorTemplateHelmInstallConfigurationResponse? install;
  /// Upgrade operation configuration for the Helm chart.
  final AkriConnectorTemplateHelmUpgradeConfigurationResponse? upgrade;

  /// Creates a new [AkriConnectorTemplateHelmAdvancedConfigurationResponse].
  /// [delete] Delete operation configuration for the Helm chart.
  /// [install] Install operation configuration for the Helm chart.
  /// [upgrade] Upgrade operation configuration for the Helm chart.
  AkriConnectorTemplateHelmAdvancedConfigurationResponse({
    this.delete,
    this.install,
    this.upgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': ?delete == null ? null : delete!.toMap(),
      'install': ?install == null ? null : install!.toMap(),
      'upgrade': ?upgrade == null ? null : upgrade!.toMap(),
    };
  }

  factory AkriConnectorTemplateHelmAdvancedConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmAdvancedConfigurationResponse(
      delete: map['delete'] == null ? null : AkriConnectorTemplateHelmDeleteConfigurationResponse.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      install: map['install'] == null ? null : AkriConnectorTemplateHelmInstallConfigurationResponse.fromMap((map['install'] as Map).cast<String, dynamic>()),
      upgrade: map['upgrade'] == null ? null : AkriConnectorTemplateHelmUpgradeConfigurationResponse.fromMap((map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

