// ignore_for_file: unused_element, unnecessary_cast

import 'configuration_set_vdm_options_dashboard_options.dart';
import 'configuration_set_vdm_options_guardian_options.dart';

class ConfigurationSetVdmOptions {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard. See `dashboard_options` Block for details.
  final ConfigurationSetVdmOptionsDashboardOptions? dashboardOptions;

  /// Specifies additional settings for your VDM configuration as applicable to the Guardian. See `guardian_options` Block for details.
  final ConfigurationSetVdmOptionsGuardianOptions? guardianOptions;

  /// Creates a new [ConfigurationSetVdmOptions].
  /// [dashboardOptions] Specifies additional settings for your VDM configuration as applicable to the Dashboard. See `dashboard_options` Block for details.
  /// [guardianOptions] Specifies additional settings for your VDM configuration as applicable to the Guardian. See `guardian_options` Block for details.
  ConfigurationSetVdmOptions({
    this.dashboardOptions,
    this.guardianOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dashboardOptionsValue = dashboardOptions;
    if (dashboardOptionsValue != null) {
      map['dashboardOptions'] = dashboardOptionsValue.toMap();
    }
    final guardianOptionsValue = guardianOptions;
    if (guardianOptionsValue != null) {
      map['guardianOptions'] = guardianOptionsValue.toMap();
    }
    return map;
  }

  factory ConfigurationSetVdmOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetVdmOptions(
      dashboardOptions: map['dashboardOptions'] == null
          ? null
          : ConfigurationSetVdmOptionsDashboardOptions.fromMap(
              (map['dashboardOptions'] as Map).cast<String, dynamic>()),
      guardianOptions: map['guardianOptions'] == null
          ? null
          : ConfigurationSetVdmOptionsGuardianOptions.fromMap(
              (map['guardianOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
