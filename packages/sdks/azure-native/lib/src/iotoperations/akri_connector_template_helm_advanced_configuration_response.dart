// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'akri_connector_template_helm_delete_configuration_response.dart';
import 'akri_connector_template_helm_install_configuration_response.dart';
import 'akri_connector_template_helm_upgrade_configuration_response.dart';

/// AkriConnectorTemplateHelmAdvancedConfiguration properties.
class AkriConnectorTemplateHelmAdvancedConfigurationResponse {
  /// Delete operation configuration for the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmDeleteConfigurationResponse>? delete;
  /// Install operation configuration for the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmInstallConfigurationResponse>? install;
  /// Upgrade operation configuration for the Helm chart.
  final pulumi.Input<AkriConnectorTemplateHelmUpgradeConfigurationResponse>? upgrade;

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
      'delete': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmDeleteConfigurationResponse, Map<String, dynamic>>(delete, (value) => value.toMap()),
      'install': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmInstallConfigurationResponse, Map<String, dynamic>>(install, (value) => value.toMap()),
      'upgrade': ?pulumi.Input.mapOptionalInputValue<AkriConnectorTemplateHelmUpgradeConfigurationResponse, Map<String, dynamic>>(upgrade, (value) => value.toMap()),
    };
  }

  factory AkriConnectorTemplateHelmAdvancedConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateHelmAdvancedConfigurationResponse(
      delete: map['delete'] == null ? null : (AkriConnectorTemplateHelmDeleteConfigurationResponse.fromMap((map['delete']! as Map).cast<String, dynamic>())).input(),
      install: map['install'] == null ? null : (AkriConnectorTemplateHelmInstallConfigurationResponse.fromMap((map['install']! as Map).cast<String, dynamic>())).input(),
      upgrade: map['upgrade'] == null ? null : (AkriConnectorTemplateHelmUpgradeConfigurationResponse.fromMap((map['upgrade']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

