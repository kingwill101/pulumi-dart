// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificate.
class GetCertificatePrivatecaV1Args {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> certificateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetCertificatePrivatecaV1Args({
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

  factory GetCertificatePrivatecaV1Args.fromMap(Map<String, dynamic> map) {
    return GetCertificatePrivatecaV1Args(
      caPoolId: pulumi.Input.asInput<String>(map['caPoolId']),
      certificateId: pulumi.Input.asInput<String>(map['certificateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
