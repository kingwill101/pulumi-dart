// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificateTemplate.
class GetCertificateTemplateArgs {
  final pulumi.Input<String> certificateTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
          pulumi.Input.asInput<String>(map['certificateTemplateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
