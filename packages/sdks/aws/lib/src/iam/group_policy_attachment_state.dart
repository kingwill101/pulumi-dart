// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupPolicyAttachment resources.
class GroupPolicyAttachmentState {
  /// The group the policy should be applied to
  final pulumi.Input<String>? group;
  /// The ARN of the policy you want to apply
  final pulumi.Input<String>? policyArn;

  /// Creates a new [GroupPolicyAttachmentState].
  /// [group] The group the policy should be applied to
  /// [policyArn] The ARN of the policy you want to apply
  GroupPolicyAttachmentState({
    this.group,
    this.policyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'policyArn': ?policyArn,
    };
  }

  factory GroupPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAttachmentState(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

