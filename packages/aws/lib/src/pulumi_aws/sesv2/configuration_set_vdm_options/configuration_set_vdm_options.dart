// ignore_for_file: unused_element, unnecessary_cast

import '../configuration_set_vdm_options_dashboard_options/configuration_set_vdm_options_dashboard_options.dart';
import '../configuration_set_vdm_options_guardian_options/configuration_set_vdm_options_guardian_options.dart';

class ConfigurationSetVdmOptions {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard. See <span pulumi-lang-nodejs="`dashboardOptions`" pulumi-lang-dotnet="`DashboardOptions`" pulumi-lang-go="`dashboardOptions`" pulumi-lang-python="`dashboard_options`" pulumi-lang-yaml="`dashboardOptions`" pulumi-lang-java="`dashboardOptions`">`dashboard_options`</span> Block for details.
  final ConfigurationSetVdmOptionsDashboardOptions? dashboardOptions;

  /// Specifies additional settings for your VDM configuration as applicable to the Guardian. See <span pulumi-lang-nodejs="`guardianOptions`" pulumi-lang-dotnet="`GuardianOptions`" pulumi-lang-go="`guardianOptions`" pulumi-lang-python="`guardian_options`" pulumi-lang-yaml="`guardianOptions`" pulumi-lang-java="`guardianOptions`">`guardian_options`</span> Block for details.
  final ConfigurationSetVdmOptionsGuardianOptions? guardianOptions;

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
