// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_vdm_attributes_dashboard_attributes.dart';
import 'account_vdm_attributes_guardian_attributes.dart';

/// {@template pulumi_sesv2_account_vdm_attributes_account_vdm_attributes_args_doc}
/// The set of arguments for AccountVdmAttributes.
/// {@endtemplate}
/// {@macro pulumi_sesv2_account_vdm_attributes_account_vdm_attributes_args_doc}
class AccountVdmAttributesArgs {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  final pulumi.Input<AccountVdmAttributesDashboardAttributes>? dashboardAttributes;
  /// Specifies additional settings for your VDM configuration as applicable to the Guardian.
  final pulumi.Input<AccountVdmAttributesGuardianAttributes>? guardianAttributes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the status of your VDM configuration. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vdmEnabled;

  /// Creates a new [AccountVdmAttributesArgs].
  /// [dashboardAttributes] Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  /// [guardianAttributes] Specifies additional settings for your VDM configuration as applicable to the Guardian.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vdmEnabled] Specifies the status of your VDM configuration. Valid values: `ENABLED`, `DISABLED`.
  const AccountVdmAttributesArgs({
    this.dashboardAttributes,
    this.guardianAttributes,
    this.region,
    required this.vdmEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardAttributes': ?pulumi.Input.mapOptionalInputValue<AccountVdmAttributesDashboardAttributes, Map<String, dynamic>>(dashboardAttributes, (value) => value.toMap()),
      'guardianAttributes': ?pulumi.Input.mapOptionalInputValue<AccountVdmAttributesGuardianAttributes, Map<String, dynamic>>(guardianAttributes, (value) => value.toMap()),
      'region': ?region,
      'vdmEnabled': vdmEnabled,
    };
  }

  factory AccountVdmAttributesArgs.fromMap(Map<String, dynamic> map) {
    return AccountVdmAttributesArgs(
      dashboardAttributes: (() { final guardedValue = map['dashboardAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountVdmAttributesDashboardAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guardianAttributes: (() { final guardedValue = map['guardianAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountVdmAttributesGuardianAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vdmEnabled: pulumi.Input.fromValue(map['vdmEnabled'] as String),
    );
  }
}
