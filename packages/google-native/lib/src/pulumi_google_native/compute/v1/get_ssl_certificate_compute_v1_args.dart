// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSslCertificate.
class GetSslCertificateComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslCertificate;

  GetSslCertificateComputeV1Args({
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

  factory GetSslCertificateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSslCertificateComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sslCertificate: pulumi.Input.asInput<String>(map['sslCertificate']),
    );
  }
}
