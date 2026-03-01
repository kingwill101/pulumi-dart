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
  PolicyAttachmentState({
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? targetId,
    pulumi.Output<String>? targetType,
  }) :
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      targetId = pulumi.Input.asOptionalInput<String>(targetId),
      targetType = pulumi.Input.asOptionalInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': ?policyId,
      'targetId': ?targetId,
      'targetType': ?targetType,
    };
  }

  factory PolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentState(
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      targetId: map['targetId'] == null ? null : pulumi.Output.create<String>(map['targetId'] as String),
      targetType: map['targetType'] == null ? null : pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

