// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEndpointAttachment.
class GetEndpointAttachmentArgs {
  final Input<String> endpointAttachmentId;
  final Input<String> organizationId;

  GetEndpointAttachmentArgs({
    required this.endpointAttachmentId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointAttachmentId'] = endpointAttachmentId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetEndpointAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointAttachmentArgs(
      endpointAttachmentId: Input.asInput<String>(map['endpointAttachmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
