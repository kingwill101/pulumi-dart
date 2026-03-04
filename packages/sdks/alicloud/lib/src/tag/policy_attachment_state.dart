// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyAttachment resources.
class PolicyAttachmentState {
  /// The ID of the tag policy.
  final pulumi.Input<String>? policyId;

  /// The ID of the object.
  final pulumi.Input<String>? targetId;

  /// The type of the object. Valid values: `USER`, `ROOT`, `FOLDER`, `ACCOUNT`.
  final pulumi.Input<String>? targetType;

  /// Creates a new [PolicyAttachmentState].
  /// [policyId] The ID of the tag policy.
  /// [targetId] The ID of the object.
  /// [targetType] The type of the object. Valid values: `USER`, `ROOT`, `FOLDER`, `ACCOUNT`.
  PolicyAttachmentState({this.policyId, this.targetId, this.targetType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'targetId': ?targetId,
      'targetType': ?targetType,
    };
  }

  factory PolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentState(
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetId: (() {
        final guardedValue = map['targetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetType: (() {
        final guardedValue = map['targetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
