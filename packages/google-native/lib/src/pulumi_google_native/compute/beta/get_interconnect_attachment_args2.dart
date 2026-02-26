// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInterconnectAttachment.
class GetInterconnectAttachmentArgs2 {
  final Input<String> interconnectAttachment;
  final Input<String>? project;
  final Input<String> region;

  GetInterconnectAttachmentArgs2({
    required this.interconnectAttachment,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['interconnectAttachment'] = interconnectAttachment;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetInterconnectAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetInterconnectAttachmentArgs2(
      interconnectAttachment:
          Input.asInput<String>(map['interconnectAttachment']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
