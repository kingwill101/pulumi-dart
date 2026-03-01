// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefilesystem_instance_attachment_instance_attachment_args_doc}
/// The set of arguments for InstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_databasefilesystem_instance_attachment_instance_attachment_args_doc}
class InstanceAttachmentArgs {
  /// The ID of the ECS instance.
  final pulumi.Input<String> ecsId;
  /// The ID of the Database File System.
  final pulumi.Input<String> instanceId;

  /// Creates a new [InstanceAttachmentArgs].
  /// [ecsId] The ID of the ECS instance.
  /// [instanceId] The ID of the Database File System.
  InstanceAttachmentArgs({
    required String ecsId,
    required String instanceId,
  }) :
      ecsId = pulumi.Input.asInput<String>(ecsId),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecsId': ecsId,
      'instanceId': instanceId,
    };
  }

  factory InstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return InstanceAttachmentArgs(
      ecsId: map['ecsId'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

