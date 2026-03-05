// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ControlPolicyAttachment resources.
class ControlPolicyAttachmentState {
  /// The ID of the access control policy.
  final pulumi.Input<String>? policyId;
  /// The ID of the object from which you want to detach the access control policy. Access control policies can be attached to the following objects:
  ///
  /// - Root folder
  /// - Subfolders of the Root folder
  /// - Members
  final pulumi.Input<String>? targetId;

  /// Creates a new [ControlPolicyAttachmentState].
  /// [policyId] The ID of the access control policy.
  /// [targetId] The ID of the object from which you want to detach the access control policy. Access control policies can be attached to the following objects:
  ControlPolicyAttachmentState({
    this.policyId,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'targetId': ?targetId,
    };
  }

  factory ControlPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return ControlPolicyAttachmentState(
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

