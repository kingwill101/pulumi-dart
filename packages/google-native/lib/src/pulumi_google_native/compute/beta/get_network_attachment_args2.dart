// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNetworkAttachment.
class GetNetworkAttachmentArgs2 {
  final Input<String> networkAttachment;
  final Input<String>? project;
  final Input<String> region;

  GetNetworkAttachmentArgs2({
    required this.networkAttachment,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkAttachment'] = networkAttachment;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetNetworkAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentArgs2(
      networkAttachment: Input.asInput<String>(map['networkAttachment']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
