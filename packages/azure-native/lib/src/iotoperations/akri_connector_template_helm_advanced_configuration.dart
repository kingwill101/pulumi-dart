// ignore_for_file: unused_element, unnecessary_cast

import 'akri_connector_template_helm_delete_configuration.dart';
import 'akri_connector_template_helm_install_configuration.dart';
import 'akri_connector_template_helm_upgrade_configuration.dart';

/// AkriConnectorTemplateHelmAdvancedConfiguration properties.
class AkriConnectorTemplateHelmAdvancedConfiguration {
  /// Delete operation configuration for the Helm chart.
  final AkriConnectorTemplateHelmDeleteConfiguration? delete;
  /// Install operation configuration for the Helm chart.
  final AkriConnectorTemplateHelmInstallConfiguration? install;
  /// Upgrade operation configuration for the Helm chart.
  final AkriConnectorTemplateHelmUpgradeConfiguration? upgrade;

  /// Creates a new [AkriConnectorTemplateHelmAdvancedConfiguration].
  /// [delete] Delete operation configuration for the Helm chart.
  /// [install] Install operation configuration for the Helm chart.
  /// [upgrade] Upgrade operation configuration for the Helm chart.
  AkriConnectorTemplateHelmAdvancedConfiguration({
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

  factory AkriConnectorTemplateHelmAdvancedConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmAdvancedConfiguration(
      delete: map['delete'] == null ? null : AkriConnectorTemplateHelmDeleteConfiguration.fromMap((map['delete'] as Map).cast<String, dynamic>()),
      install: map['install'] == null ? null : AkriConnectorTemplateHelmInstallConfiguration.fromMap((map['install'] as Map).cast<String, dynamic>()),
      upgrade: map['upgrade'] == null ? null : AkriConnectorTemplateHelmUpgradeConfiguration.fromMap((map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

