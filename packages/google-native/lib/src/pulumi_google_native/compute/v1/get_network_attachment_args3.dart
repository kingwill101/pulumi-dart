// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetworkAttachment.
class GetNetworkAttachmentArgs3 {
  final Input<String> networkAttachment;
  final Input<String>? project;
  final Input<String> region;

  GetNetworkAttachmentArgs3({
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

  factory GetNetworkAttachmentArgs3.fromMap(Map<String, dynamic> map) {
    return GetNetworkAttachmentArgs3(
      networkAttachment: Input.asInput<String>(map['networkAttachment']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
