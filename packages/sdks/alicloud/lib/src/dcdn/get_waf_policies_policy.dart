// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWafPoliciesPolicy {
  /// The first ID of the resource.
  final pulumi.Input<String> dcdnWafPolicyId;

  /// The type of protection policy.
  final pulumi.Input<String> defenseScene;

  /// The number of domain names that use this protection policy.
  final pulumi.Input<int> domainCount;

  /// The time when the protection policy was modified.
  final pulumi.Input<String> gmtModified;

  /// The ID of the Waf Policy.
  final pulumi.Input<String> id;

  /// The name of the protection policy.
  final pulumi.Input<String> policyName;

  /// The type of the protection policy.
  final pulumi.Input<String> policyType;

  /// The number of protection rules in this protection policy.
  final pulumi.Input<String> ruleCount;

  /// The status of the resource. Valid values: `on`, `off`.
  final pulumi.Input<String> status;

  /// Creates a new [GetWafPoliciesPolicy].
  /// [dcdnWafPolicyId] The first ID of the resource.
  /// [defenseScene] The type of protection policy.
  /// [domainCount] The number of domain names that use this protection policy.
  /// [gmtModified] The time when the protection policy was modified.
  /// [id] The ID of the Waf Policy.
  /// [policyName] The name of the protection policy.
  /// [policyType] The type of the protection policy.
  /// [ruleCount] The number of protection rules in this protection policy.
  /// [status] The status of the resource. Valid values: `on`, `off`.
  GetWafPoliciesPolicy({
    required this.dcdnWafPolicyId,
    required this.defenseScene,
    required this.domainCount,
    required this.gmtModified,
    required this.id,
    required this.policyName,
    required this.policyType,
    required this.ruleCount,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dcdnWafPolicyId': dcdnWafPolicyId,
      'defenseScene': defenseScene,
      'domainCount': domainCount,
      'gmtModified': gmtModified,
      'id': id,
      'policyName': policyName,
      'policyType': policyType,
      'ruleCount': ruleCount,
      'status': status,
    };
  }

  factory GetWafPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetWafPoliciesPolicy(
      dcdnWafPolicyId: pulumi.Input.fromValue(map['dcdnWafPolicyId'] as String),
      defenseScene: pulumi.Input.fromValue(map['defenseScene'] as String),
      domainCount: pulumi.Input.fromValue(map['domainCount'] as int),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      ruleCount: pulumi.Input.fromValue(map['ruleCount'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
