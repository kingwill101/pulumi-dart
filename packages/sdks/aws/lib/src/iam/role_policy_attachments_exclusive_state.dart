// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RolePolicyAttachmentsExclusive resources.
class RolePolicyAttachmentsExclusiveState {
  /// A list of managed IAM policy ARNs to be attached to the role. Policies attached to this role but not configured in this argument will be removed.
  final pulumi.Input<List<String>>? policyArns;
  /// IAM role name.
  final pulumi.Input<String>? roleName;

  /// Creates a new [RolePolicyAttachmentsExclusiveState].
  /// [policyArns] A list of managed IAM policy ARNs to be attached to the role. Policies attached to this role but not configured in this argument will be removed.
  /// [roleName] IAM role name.
  RolePolicyAttachmentsExclusiveState({
    pulumi.Output<List<String>>? policyArns,
    pulumi.Output<String>? roleName,
  }) :
      policyArns = pulumi.Input.asOptionalInput<List<String>>(policyArns),
      roleName = pulumi.Input.asOptionalInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArns': ?policyArns,
      'roleName': ?roleName,
    };
  }

  factory RolePolicyAttachmentsExclusiveState.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentsExclusiveState(
      policyArns: map['policyArns'] == null ? null : pulumi.Output.create<List<String>>((map['policyArns'] as List).cast<String>()),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

