// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_instance_attachment_args_doc}
/// Arguments for getInstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_instance_attachment_args_doc}
class GetInstanceAttachmentArgs {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetInstanceAttachmentArgs].
  /// [attachmentId] Required.
  /// [instanceId] Required.
  /// [organizationId] Required.
  GetInstanceAttachmentArgs({
    required String attachmentId,
    required String instanceId,
    required String organizationId,
  })  : attachmentId = pulumi.Input.asInput<String>(attachmentId),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['instanceId'] = instanceId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetInstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentArgs(
      attachmentId: map['attachmentId'] as String,
      instanceId: map['instanceId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
