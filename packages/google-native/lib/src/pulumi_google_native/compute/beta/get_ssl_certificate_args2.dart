// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSslCertificate.
class GetSslCertificateArgs2 {
  final Input<String>? project;
  final Input<String> sslCertificate;

  GetSslCertificateArgs2({
    this.project,
    required this.sslCertificate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sslCertificate'] = sslCertificate;
    return map;
  }

  factory GetSslCertificateArgs2.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      sslCertificate: Input.asInput<String>(map['sslCertificate']),
    );
  }
}
