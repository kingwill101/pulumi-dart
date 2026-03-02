// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlPoliciesPolicy {
  /// The count of policy attachment.
  final pulumi.Input<int> attachmentCount;
  /// The name of policy.
  final pulumi.Input<String> controlPolicyName;
  /// The description of policy.
  final pulumi.Input<String> description;
  /// The effect scope.
  final pulumi.Input<String> effectScope;
  /// The ID of the Control Policy.
  final pulumi.Input<String> id;
  /// The policy document.
  final pulumi.Input<String> policyDocument;
  /// The ID of policy.
  final pulumi.Input<String> policyId;
  /// The type of policy.
  final pulumi.Input<String> policyType;

  /// Creates a new [GetControlPoliciesPolicy].
  /// [attachmentCount] The count of policy attachment.
  /// [controlPolicyName] The name of policy.
  /// [description] The description of policy.
  /// [effectScope] The effect scope.
  /// [id] The ID of the Control Policy.
  /// [policyDocument] The policy document.
  /// [policyId] The ID of policy.
  /// [policyType] The type of policy.
  GetControlPoliciesPolicy({
    required this.attachmentCount,
    required this.controlPolicyName,
    required this.description,
    required this.effectScope,
    required this.id,
    required this.policyDocument,
    required this.policyId,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentCount': attachmentCount,
      'controlPolicyName': controlPolicyName,
      'description': description,
      'effectScope': effectScope,
      'id': id,
      'policyDocument': policyDocument,
      'policyId': policyId,
      'policyType': policyType,
    };
  }

  factory GetControlPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesPolicy(
      attachmentCount: (map['attachmentCount'] as int).input(),
      controlPolicyName: (map['controlPolicyName'] as String).input(),
      description: (map['description'] as String).input(),
      effectScope: (map['effectScope'] as String).input(),
      id: (map['id'] as String).input(),
      policyDocument: (map['policyDocument'] as String).input(),
      policyId: (map['policyId'] as String).input(),
      policyType: (map['policyType'] as String).input(),
    );
  }
}

