// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstanceAttachment.
class GetInstanceAttachmentArgs {
  final Input<String> attachmentId;
  final Input<String> instanceId;
  final Input<String> organizationId;

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
      attachmentId: Input.asInput<String>(map['attachmentId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
