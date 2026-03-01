// ignore_for_file: unused_element, unnecessary_cast


class GetWafPoliciesPolicy {
  /// The first ID of the resource.
  final String dcdnWafPolicyId;
  /// The type of protection policy.
  final String defenseScene;
  /// The number of domain names that use this protection policy.
  final int domainCount;
  /// The time when the protection policy was modified.
  final String gmtModified;
  /// The ID of the Waf Policy.
  final String id;
  /// The name of the protection policy.
  final String policyName;
  /// The type of the protection policy.
  final String policyType;
  /// The number of protection rules in this protection policy.
  final String ruleCount;
  /// The status of the resource. Valid values: `on`, `off`.
  final String status;

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
      dcdnWafPolicyId: map['dcdnWafPolicyId'] as String,
      defenseScene: map['defenseScene'] as String,
      domainCount: map['domainCount'] as int,
      gmtModified: map['gmtModified'] as String,
      id: map['id'] as String,
      policyName: map['policyName'] as String,
      policyType: map['policyType'] as String,
      ruleCount: map['ruleCount'] as String,
      status: map['status'] as String,
    );
  }
}

