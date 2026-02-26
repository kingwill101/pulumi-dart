// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSslCertificate.
class GetSslCertificateArgs {
  final Input<String>? project;
  final Input<String> sslCertificate;

  GetSslCertificateArgs({
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

  factory GetSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateArgs(
      project: Input.asOptionalInput<String>(map['project']),
      sslCertificate: Input.asInput<String>(map['sslCertificate']),
    );
  }
}
