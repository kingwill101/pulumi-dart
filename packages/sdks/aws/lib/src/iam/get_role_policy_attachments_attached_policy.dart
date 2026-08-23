// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRolePolicyAttachmentsAttachedPolicy {
  /// ARN of the attached managed policy.
  final pulumi.Input<String> policyArn;
  /// Name of the attached managed policy.
  final pulumi.Input<String> policyName;

  /// Creates a new [GetRolePolicyAttachmentsAttachedPolicy].
  /// [policyArn] ARN of the attached managed policy.
  /// [policyName] Name of the attached managed policy.
  const GetRolePolicyAttachmentsAttachedPolicy({
    required this.policyArn,
    required this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArn': policyArn,
      'policyName': policyName,
    };
  }

  factory GetRolePolicyAttachmentsAttachedPolicy.fromMap(Map<String, dynamic> map) {
    return GetRolePolicyAttachmentsAttachedPolicy(
      policyArn: pulumi.Input.fromValue(map['policyArn'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
    );
  }
}
