// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCertificateTemplate.
class GetCertificateTemplateArgs {
  final Input<String> certificateTemplateId;
  final Input<String> location;
  final Input<String>? project;

  GetCertificateTemplateArgs({
    required this.certificateTemplateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateTemplateId'] = certificateTemplateId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateTemplateArgs(
      certificateTemplateId:
          Input.asInput<String>(map['certificateTemplateId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
