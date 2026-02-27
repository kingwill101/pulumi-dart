// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceAttachment.
class GetServiceAttachmentComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> serviceAttachment;

  GetServiceAttachmentComputeV1Args({
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

  factory GetServiceAttachmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetServiceAttachmentComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      serviceAttachment: pulumi.Input.asInput<String>(map['serviceAttachment']),
    );
  }
}
