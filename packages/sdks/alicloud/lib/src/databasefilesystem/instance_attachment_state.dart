// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceAttachment resources.
class InstanceAttachmentState {
  /// The ID of the ECS instance.
  final pulumi.Input<String>? ecsId;
  /// The ID of the Database File System.
  final pulumi.Input<String>? instanceId;
  /// The status of Instance Attachment.
  final pulumi.Input<String>? status;

  /// Creates a new [InstanceAttachmentState].
  /// [ecsId] The ID of the ECS instance.
  /// [instanceId] The ID of the Database File System.
  /// [status] The status of Instance Attachment.
  InstanceAttachmentState({
    pulumi.Output<String>? ecsId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? status,
  }) :
      ecsId = pulumi.Input.asOptionalInput<String>(ecsId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecsId': ?ecsId,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory InstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentState(
      ecsId: map['ecsId'] == null ? null : pulumi.Output.create<String>(map['ecsId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

