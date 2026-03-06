// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_set_vdm_options_dashboard_options.dart';
import 'configuration_set_vdm_options_guardian_options.dart';

class ConfigurationSetVdmOptions {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard. See `dashboard_options` Block for details.
  final pulumi.Input<ConfigurationSetVdmOptionsDashboardOptions>? dashboardOptions;
  /// Specifies additional settings for your VDM configuration as applicable to the Guardian. See `guardian_options` Block for details.
  final pulumi.Input<ConfigurationSetVdmOptionsGuardianOptions>? guardianOptions;

  /// Creates a new [ConfigurationSetVdmOptions].
  /// [dashboardOptions] Specifies additional settings for your VDM configuration as applicable to the Dashboard. See `dashboard_options` Block for details.
  /// [guardianOptions] Specifies additional settings for your VDM configuration as applicable to the Guardian. See `guardian_options` Block for details.
  const ConfigurationSetVdmOptions({
    this.dashboardOptions,
    this.guardianOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetVdmOptionsDashboardOptions, Map<String, dynamic>>(dashboardOptions, (value) => value.toMap()),
      'guardianOptions': ?pulumi.Input.mapOptionalInputValue<ConfigurationSetVdmOptionsGuardianOptions, Map<String, dynamic>>(guardianOptions, (value) => value.toMap()),
    };
  }

  factory ConfigurationSetVdmOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetVdmOptions(
      dashboardOptions: (() { final guardedValue = map['dashboardOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetVdmOptionsDashboardOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guardianOptions: (() { final guardedValue = map['guardianOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationSetVdmOptionsGuardianOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

