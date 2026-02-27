// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCertificate.
class GetCertificateArgs2 {
  final Input<String> certificateId;
  final Input<String> location;
  final Input<String> productId;
  final Input<String>? project;

  GetCertificateArgs2({
    required this.certificateId,
    required this.location,
    required this.productId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateId'] = certificateId;
    map['location'] = location;
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCertificateArgs2.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs2(
      certificateId: Input.asInput<String>(map['certificateId']),
      location: Input.asInput<String>(map['location']),
      productId: Input.asInput<String>(map['productId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
