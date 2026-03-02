// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RolePolicyAttachment resources.
class RolePolicyAttachmentState {
  /// The name of the policy.
  final pulumi.Input<String>? policyName;
  /// Policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  final pulumi.Input<String>? policyType;
  /// The RAM role name.
  final pulumi.Input<String>? roleName;

  /// Creates a new [RolePolicyAttachmentState].
  /// [policyName] The name of the policy.
  /// [policyType] Policy type.
  /// [roleName] The RAM role name.
  RolePolicyAttachmentState({
    this.policyName,
    this.policyType,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'policyType': ?policyType,
      'roleName': ?roleName,
    };
  }

  factory RolePolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentState(
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
    );
  }
}

