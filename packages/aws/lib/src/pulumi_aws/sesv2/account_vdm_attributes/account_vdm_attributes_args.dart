// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../account_vdm_attributes_dashboard_attributes/account_vdm_attributes_dashboard_attributes.dart';
import '../account_vdm_attributes_guardian_attributes/account_vdm_attributes_guardian_attributes.dart';

/// The set of arguments for AccountVdmAttributes.
class AccountVdmAttributesArgs {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  final pulumi.Input<AccountVdmAttributesDashboardAttributes>?
      dashboardAttributes;

  /// Specifies additional settings for your VDM configuration as applicable to the Guardian.
  final pulumi.Input<AccountVdmAttributesGuardianAttributes>?
      guardianAttributes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the status of your VDM configuration. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vdmEnabled;

  AccountVdmAttributesArgs({
    this.dashboardAttributes,
    this.guardianAttributes,
    this.region,
    required this.vdmEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dashboardAttributesValue = dashboardAttributes;
    if (dashboardAttributesValue != null) {
      map['dashboardAttributes'] = pulumi.Input.mapOptionalInputValue<
              AccountVdmAttributesDashboardAttributes, Map<String, dynamic>>(
          dashboardAttributesValue, (value) => value.toMap());
    }
    final guardianAttributesValue = guardianAttributes;
    if (guardianAttributesValue != null) {
      map['guardianAttributes'] = pulumi.Input.mapOptionalInputValue<
              AccountVdmAttributesGuardianAttributes, Map<String, dynamic>>(
          guardianAttributesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vdmEnabled'] = vdmEnabled;
    return map;
  }

  factory AccountVdmAttributesArgs.fromMap(Map<String, dynamic> map) {
    return AccountVdmAttributesArgs(
      dashboardAttributes:
          pulumi.Input.asOptionalInput<AccountVdmAttributesDashboardAttributes>(
              map['dashboardAttributes']),
      guardianAttributes:
          pulumi.Input.asOptionalInput<AccountVdmAttributesGuardianAttributes>(
              map['guardianAttributes']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      vdmEnabled: pulumi.Input.asInput<String>(map['vdmEnabled']),
    );
  }
}
