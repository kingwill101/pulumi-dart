// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEndpointAttachment.
class GetEndpointAttachmentArgs2 {
  final Input<String> endpointAttachmentId;
  final Input<String> location;
  final Input<String>? project;

  GetEndpointAttachmentArgs2({
    required this.endpointAttachmentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpointAttachmentId'] = endpointAttachmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEndpointAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetEndpointAttachmentArgs2(
      endpointAttachmentId: Input.asInput<String>(map['endpointAttachmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
