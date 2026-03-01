// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_set_vdm_option_dashboard_option.dart';
import 'get_configuration_set_vdm_option_guardian_option.dart';

class GetConfigurationSetVdmOption {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  final List<GetConfigurationSetVdmOptionDashboardOption> dashboardOptions;

  /// Specifies additional settings for your VDM configuration as applicable to the Guardian.
  final List<GetConfigurationSetVdmOptionGuardianOption> guardianOptions;

  /// Creates a new [GetConfigurationSetVdmOption].
  /// [dashboardOptions] Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  /// [guardianOptions] Specifies additional settings for your VDM configuration as applicable to the Guardian.
  GetConfigurationSetVdmOption({
    required this.dashboardOptions,
    required this.guardianOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardOptions':
          pulumi.Input.encodeList<
            GetConfigurationSetVdmOptionDashboardOption,
            Map<String, dynamic>
          >(dashboardOptions, (value) => value.toMap()),
      'guardianOptions':
          pulumi.Input.encodeList<
            GetConfigurationSetVdmOptionGuardianOption,
            Map<String, dynamic>
          >(guardianOptions, (value) => value.toMap()),
    };
  }

  factory GetConfigurationSetVdmOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetVdmOption(
      dashboardOptions:
          pulumi.Input.decodeList<GetConfigurationSetVdmOptionDashboardOption>(
            map['dashboardOptions'],
            (value) => GetConfigurationSetVdmOptionDashboardOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      guardianOptions:
          pulumi.Input.decodeList<GetConfigurationSetVdmOptionGuardianOption>(
            map['guardianOptions'],
            (value) => GetConfigurationSetVdmOptionGuardianOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
