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
    pulumi.Output<AccountVdmAttributesDashboardAttributes>? dashboardAttributes,
    pulumi.Output<AccountVdmAttributesGuardianAttributes>? guardianAttributes,
    pulumi.Output<String>? region,
    pulumi.Output<String>? vdmEnabled,
  }) :
      dashboardAttributes = pulumi.Input.asOptionalInput<AccountVdmAttributesDashboardAttributes>(dashboardAttributes),
      guardianAttributes = pulumi.Input.asOptionalInput<AccountVdmAttributesGuardianAttributes>(guardianAttributes),
      region = pulumi.Input.asOptionalInput<String>(region),
      vdmEnabled = pulumi.Input.asOptionalInput<String>(vdmEnabled);

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
      dashboardAttributes: map['dashboardAttributes'] == null ? null : pulumi.Output.create<AccountVdmAttributesDashboardAttributes>(AccountVdmAttributesDashboardAttributes.fromMap((map['dashboardAttributes'] as Map).cast<String, dynamic>())),
      guardianAttributes: map['guardianAttributes'] == null ? null : pulumi.Output.create<AccountVdmAttributesGuardianAttributes>(AccountVdmAttributesGuardianAttributes.fromMap((map['guardianAttributes'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vdmEnabled: map['vdmEnabled'] == null ? null : pulumi.Output.create<String>(map['vdmEnabled'] as String),
    );
  }
}

