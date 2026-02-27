// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceAttachment.
class GetInstanceAttachmentArgs {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  GetInstanceAttachmentArgs({
    required this.attachmentId,
    required this.instanceId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['instanceId'] = instanceId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetInstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachmentArgs(
      attachmentId: pulumi.Input.asInput<String>(map['attachmentId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
