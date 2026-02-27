// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEnvgroupAttachment.
class GetEnvgroupAttachmentArgs {
  final Input<String> attachmentId;
  final Input<String> envgroupId;
  final Input<String> organizationId;

  GetEnvgroupAttachmentArgs({
    required this.attachmentId,
    required this.envgroupId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['envgroupId'] = envgroupId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetEnvgroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupAttachmentArgs(
      attachmentId: Input.asInput<String>(map['attachmentId']),
      envgroupId: Input.asInput<String>(map['envgroupId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
