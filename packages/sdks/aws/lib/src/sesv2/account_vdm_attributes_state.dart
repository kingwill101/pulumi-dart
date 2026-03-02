// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_vdm_attributes_dashboard_attributes.dart';
import 'account_vdm_attributes_guardian_attributes.dart';

/// Input properties used for looking up and filtering AccountVdmAttributes resources.
class AccountVdmAttributesState {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  final pulumi.Input<AccountVdmAttributesDashboardAttributes>? dashboardAttributes;
  /// Specifies additional settings for your VDM configuration as applicable to the Guardian.
  final pulumi.Input<AccountVdmAttributesGuardianAttributes>? guardianAttributes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the status of your VDM configuration. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vdmEnabled;

  /// Creates a new [AccountVdmAttributesState].
  /// [dashboardAttributes] Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  /// [guardianAttributes] Specifies additional settings for your VDM configuration as applicable to the Guardian.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vdmEnabled] Specifies the status of your VDM configuration. Valid values: `ENABLED`, `DISABLED`.
  AccountVdmAttributesState({
    this.dashboardAttributes,
    this.guardianAttributes,
    this.region,
    this.vdmEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardAttributes': ?pulumi.Input.mapOptionalInputValue<AccountVdmAttributesDashboardAttributes, Map<String, dynamic>>(dashboardAttributes, (value) => value.toMap()),
      'guardianAttributes': ?pulumi.Input.mapOptionalInputValue<AccountVdmAttributesGuardianAttributes, Map<String, dynamic>>(guardianAttributes, (value) => value.toMap()),
      'region': ?region,
      'vdmEnabled': ?vdmEnabled,
    };
  }

  factory AccountVdmAttributesState.fromMap(Map<String, dynamic> map) {
    return AccountVdmAttributesState(
      dashboardAttributes: map['dashboardAttributes'] == null ? null : ((AccountVdmAttributesDashboardAttributes.fromMap((map['dashboardAttributes']! as Map).cast<String, dynamic>())).input()).input(),
      guardianAttributes: map['guardianAttributes'] == null ? null : ((AccountVdmAttributesGuardianAttributes.fromMap((map['guardianAttributes']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      vdmEnabled: map['vdmEnabled'] == null ? null : ((map['vdmEnabled'] as String).input()).input(),
    );
  }
}

