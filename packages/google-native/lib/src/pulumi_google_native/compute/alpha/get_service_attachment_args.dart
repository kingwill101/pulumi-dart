// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServiceAttachment.
class GetServiceAttachmentArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> serviceAttachment;

  GetServiceAttachmentArgs({
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

  factory GetServiceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      serviceAttachment: Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
