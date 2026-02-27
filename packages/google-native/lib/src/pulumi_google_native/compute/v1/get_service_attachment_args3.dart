// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceAttachment.
class GetServiceAttachmentArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> serviceAttachment;

  GetServiceAttachmentArgs3({
    this.project,
    required this.region,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory GetServiceAttachmentArgs3.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      serviceAttachment: Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
