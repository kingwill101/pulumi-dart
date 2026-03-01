// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_vpd_grant_rule_vpd_grant_rule_args_doc}
/// The set of arguments for VpdGrantRule.
/// {@endtemplate}
/// {@macro pulumi_eflo_vpd_grant_rule_vpd_grant_rule_args_doc}
class VpdGrantRuleArgs {
  /// The ID of the ER instance under the cross-account tenant.
  final pulumi.Input<String> erId;
  /// Cross-account authorized tenant ID.
  final pulumi.Input<String> grantTenantId;
  /// Instance ID of VPD.
  final pulumi.Input<String> instanceId;

  /// Creates a new [VpdGrantRuleArgs].
  /// [erId] The ID of the ER instance under the cross-account tenant.
  /// [grantTenantId] Cross-account authorized tenant ID.
  /// [instanceId] Instance ID of VPD.
  VpdGrantRuleArgs({
    required pulumi.Output<String> erId,
    required pulumi.Output<String> grantTenantId,
    required pulumi.Output<String> instanceId,
  }) :
      erId = pulumi.Input.asInput<String>(erId),
      grantTenantId = pulumi.Input.asInput<String>(grantTenantId),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'erId': erId,
      'grantTenantId': grantTenantId,
      'instanceId': instanceId,
    };
  }

  factory VpdGrantRuleArgs.fromMap(Map<String, dynamic> map) {
    return VpdGrantRuleArgs(
      erId: pulumi.Output.create<String>(map['erId'] as String),
      grantTenantId: pulumi.Output.create<String>(map['grantTenantId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

