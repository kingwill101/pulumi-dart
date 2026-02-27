// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCertificateAuthority.
class GetCertificateAuthorityArgs {
  final Input<String> caPoolId;
  final Input<String> certificateAuthorityId;
  final Input<String> location;
  final Input<String>? project;

  GetCertificateAuthorityArgs({
    required this.caPoolId,
    required this.certificateAuthorityId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caPoolId'] = caPoolId;
    map['certificateAuthorityId'] = certificateAuthorityId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityArgs(
      caPoolId: Input.asInput<String>(map['caPoolId']),
      certificateAuthorityId:
          Input.asInput<String>(map['certificateAuthorityId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
