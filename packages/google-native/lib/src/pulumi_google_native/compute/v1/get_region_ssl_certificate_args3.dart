// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionSslCertificate.
class GetRegionSslCertificateArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> sslCertificate;

  GetRegionSslCertificateArgs3({
    this.project,
    required this.region,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['sslCertificate'] = sslCertificate;
    return map;
  }

  factory GetRegionSslCertificateArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      sslCertificate: Input.asInput<String>(map['sslCertificate']),
    );
  }
}
