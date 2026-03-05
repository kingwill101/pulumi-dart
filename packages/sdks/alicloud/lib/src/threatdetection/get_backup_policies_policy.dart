// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupPoliciesPolicy {
  /// The ID of the anti-ransomware policy.
  final pulumi.Input<int> backupPolicyId;
  /// The name of the anti-ransomware policy.
  final pulumi.Input<String> backupPolicyName;
  /// The ID of the anti-ransomware policy.
  final pulumi.Input<int> id;
  /// The configurations of the anti-ransomware policy.
  final pulumi.Input<String> policy;
  /// The ID of the region that you specified for data backup when you installed the anti-ransomware agent for the server not deployed on Alibaba Cloud.
  final pulumi.Input<String> policyRegionId;
  /// The version of the anti-ransomware policy.
  final pulumi.Input<String> policyVersion;
  /// The status of the anti-ransomware policy. Valid Value: `enabled`, `disabled`, `closed`.
  final pulumi.Input<String> status;
  /// The UUIDs of the servers to which the anti-ransomware policy is applied.
  final pulumi.Input<List<String>> uuidLists;

  /// Creates a new [GetBackupPoliciesPolicy].
  /// [backupPolicyId] The ID of the anti-ransomware policy.
  /// [backupPolicyName] The name of the anti-ransomware policy.
  /// [id] The ID of the anti-ransomware policy.
  /// [policy] The configurations of the anti-ransomware policy.
  /// [policyRegionId] The ID of the region that you specified for data backup when you installed the anti-ransomware agent for the server not deployed on Alibaba Cloud.
  /// [policyVersion] The version of the anti-ransomware policy.
  /// [status] The status of the anti-ransomware policy. Valid Value: `enabled`, `disabled`, `closed`.
  /// [uuidLists] The UUIDs of the servers to which the anti-ransomware policy is applied.
  GetBackupPoliciesPolicy({
    required this.backupPolicyId,
    required this.backupPolicyName,
    required this.id,
    required this.policy,
    required this.policyRegionId,
    required this.policyVersion,
    required this.status,
    required this.uuidLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'backupPolicyName': backupPolicyName,
      'id': id,
      'policy': policy,
      'policyRegionId': policyRegionId,
      'policyVersion': policyVersion,
      'status': status,
      'uuidLists': uuidLists,
    };
  }

  factory GetBackupPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackupPoliciesPolicy(
      backupPolicyId: pulumi.Input.fromValue(map['backupPolicyId'] as int),
      backupPolicyName: pulumi.Input.fromValue(map['backupPolicyName'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      policyRegionId: pulumi.Input.fromValue(map['policyRegionId'] as String),
      policyVersion: pulumi.Input.fromValue(map['policyVersion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      uuidLists: pulumi.Input.fromValue((map['uuidLists'] as List).cast<String>()),
    );
  }
}

