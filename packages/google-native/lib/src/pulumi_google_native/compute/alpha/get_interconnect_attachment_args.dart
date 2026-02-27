// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInterconnectAttachment.
class GetInterconnectAttachmentArgs {
  final pulumi.Input<String> interconnectAttachment;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetInterconnectAttachmentArgs({
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

  factory GetInterconnectAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInterconnectAttachmentArgs(
      interconnectAttachment:
          pulumi.Input.asInput<String>(map['interconnectAttachment']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
