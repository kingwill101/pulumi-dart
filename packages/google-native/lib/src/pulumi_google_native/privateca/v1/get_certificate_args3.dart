// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCertificate.
class GetCertificateArgs3 {
  final Input<String> caPoolId;
  final Input<String> certificateId;
  final Input<String> location;
  final Input<String>? project;

  GetCertificateArgs3({
    required this.caPoolId,
    required this.certificateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    map['certificateId'] = certificateId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateArgs3.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs3(
      caPoolId: Input.asInput<String>(map['caPoolId']),
      certificateId: Input.asInput<String>(map['certificateId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
