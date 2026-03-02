// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_waf_policy_waf_policy_args_doc}
/// The set of arguments for WafPolicy.
/// {@endtemplate}
/// {@macro pulumi_dcdn_waf_policy_waf_policy_args_doc}
class WafPolicyArgs {
  /// The type of protection policy. Valid values: `waf_group`, `custom_acl`, `whitelist`, `ip_blacklist`, `region_block`.
  final pulumi.Input<String> defenseScene;
  /// The name of the protection policy. The name must be 1 to 64 characters in length, and can contain letters, digits,and underscores (_).
  final pulumi.Input<String> policyName;
  /// The type of the protection policy. Valid values: `default`, `custom`.
  final pulumi.Input<String> policyType;
  /// The status of the resource. Valid values: `on`, `off`.
  final pulumi.Input<String> status;

  /// Creates a new [WafPolicyArgs].
  /// [defenseScene] The type of protection policy. Valid values: `waf_group`, `custom_acl`, `whitelist`, `ip_blacklist`, `region_block`.
  /// [policyName] The name of the protection policy. The name must be 1 to 64 characters in length, and can contain letters, digits,and underscores (_).
  /// [policyType] The type of the protection policy. Valid values: `default`, `custom`.
  /// [status] The status of the resource. Valid values: `on`, `off`.
  WafPolicyArgs({
    required this.defenseScene,
    required this.policyName,
    required this.policyType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenseScene': defenseScene,
      'policyName': policyName,
      'policyType': policyType,
      'status': status,
    };
  }

  factory WafPolicyArgs.fromMap(Map<String, dynamic> map) {
    return WafPolicyArgs(
      defenseScene: (map['defenseScene'] as String).input(),
      policyName: (map['policyName'] as String).input(),
      policyType: (map['policyType'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

