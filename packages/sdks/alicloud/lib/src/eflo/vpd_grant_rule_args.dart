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
    required this.erId,
    required this.grantTenantId,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'erId': erId,
      'grantTenantId': grantTenantId,
      'instanceId': instanceId,
    };
  }

  factory VpdGrantRuleArgs.fromMap(Map<String, dynamic> map) {
    return VpdGrantRuleArgs(
      erId: pulumi.Input.fromValue(map['erId'] as String),
      grantTenantId: pulumi.Input.fromValue(map['grantTenantId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

