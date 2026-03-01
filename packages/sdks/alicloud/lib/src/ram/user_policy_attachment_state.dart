// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPolicyAttachment resources.
class UserPolicyAttachmentState {
  /// The name of the policy.
  final pulumi.Input<String>? policyName;
  /// Permission policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  final pulumi.Input<String>? policyType;
  /// The name of the RAM user.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserPolicyAttachmentState].
  /// [policyName] The name of the policy.
  /// [policyType] Permission policy type.
  /// [userName] The name of the RAM user.
  UserPolicyAttachmentState({
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? policyType,
    pulumi.Output<String>? userName,
  }) :
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'policyType': ?policyType,
      'userName': ?userName,
    };
  }

  factory UserPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentState(
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

