// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionSslCertificate.
class GetRegionSslCertificateArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> sslCertificate;

  GetRegionSslCertificateArgs2({
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

  factory GetRegionSslCertificateArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      sslCertificate: Input.asInput<String>(map['sslCertificate']),
    );
  }
}
