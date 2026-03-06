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
  const InstanceAttachmentState({
    this.ecsId,
    this.instanceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecsId': ?ecsId,
      'instanceId': ?instanceId,
      'status': ?status,
    };
  }

  factory InstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentState(
      ecsId: (() { final guardedValue = map['ecsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

