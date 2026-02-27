// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvgroupAttachment.
class GetEnvgroupAttachmentArgs {
  final pulumi.Input<String> attachmentId;
  final pulumi.Input<String> envgroupId;
  final pulumi.Input<String> organizationId;

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
      attachmentId: pulumi.Input.asInput<String>(map['attachmentId']),
      envgroupId: pulumi.Input.asInput<String>(map['envgroupId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
