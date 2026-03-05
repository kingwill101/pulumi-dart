// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupPolicyAttachment resources.
class GroupPolicyAttachmentState {
  /// The name of the group.
  final pulumi.Input<String>? groupName;
  /// The name of the policy.
  final pulumi.Input<String>? policyName;
  /// Policy type.
  /// - Custom: Custom policy.
  /// - System: System policy.
  final pulumi.Input<String>? policyType;

  /// Creates a new [GroupPolicyAttachmentState].
  /// [groupName] The name of the group.
  /// [policyName] The name of the policy.
  /// [policyType] Policy type.
  GroupPolicyAttachmentState({
    this.groupName,
    this.policyName,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'policyName': ?policyName,
      'policyType': ?policyType,
    };
  }

  factory GroupPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAttachmentState(
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

