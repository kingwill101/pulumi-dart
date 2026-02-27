// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSslCertificate.
class GetSslCertificateArgs3 {
  final Input<String>? project;
  final Input<String> sslCertificate;

  GetSslCertificateArgs3({
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

  factory GetSslCertificateArgs3.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      sslCertificate: Input.asInput<String>(map['sslCertificate']),
    );
  }
}
