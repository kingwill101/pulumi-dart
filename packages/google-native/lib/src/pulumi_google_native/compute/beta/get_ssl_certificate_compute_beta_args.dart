// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSslCertificate.
class GetSslCertificateComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslCertificate;

  GetSslCertificateComputeBetaArgs({
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

  factory GetSslCertificateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sslCertificate: pulumi.Input.asInput<String>(map['sslCertificate']),
    );
  }
}
