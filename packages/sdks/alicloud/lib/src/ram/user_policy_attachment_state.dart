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
    this.policyName,
    this.policyType,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'policyType': ?policyType,
      'userName': ?userName,
    };
  }

  factory UserPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return UserPolicyAttachmentState(
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

