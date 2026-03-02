// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_delete_configuration.dart';
import 'akri_connector_template_helm_install_configuration.dart';
import 'akri_connector_template_helm_upgrade_configuration.dart';

/// AkriConnectorTemplateHelmAdvancedConfiguration properties.
class AkriConnectorTemplateHelmAdvancedConfiguration {
  /// Delete operation configuration for the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmDeleteConfiguration>? delete;
  /// Install operation configuration for the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmInstallConfiguration>? install;
  /// Upgrade operation configuration for the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmUpgradeConfiguration>? upgrade;

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
      'delete': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmDeleteConfiguration, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'install': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmInstallConfiguration, Map<String, dynamic>>(install, (value) => value.toMap()),
      'upgrade': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmUpgradeConfiguration, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateHelmAdvancedConfiguration.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmAdvancedConfiguration(
      delete: map['delete'] == null ? null : (AkriConnectorTemplateHelmDeleteConfiguration.fromMap((map['delete'] as Map).cast<String, dynamic>())).input(),
      install: map['install'] == null ? null : (AkriConnectorTemplateHelmInstallConfiguration.fromMap((map['install'] as Map).cast<String, dynamic>())).input(),
      upgrade: map['upgrade'] == null ? null : (AkriConnectorTemplateHelmUpgradeConfiguration.fromMap((map['upgrade'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

