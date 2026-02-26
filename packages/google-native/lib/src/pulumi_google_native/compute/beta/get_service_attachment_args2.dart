// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceAttachment.
class GetServiceAttachmentArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> serviceAttachment;

  GetServiceAttachmentArgs2({
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

  factory GetServiceAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      serviceAttachment: Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
