// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionSslCertificate.
class GetRegionSslCertificateComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslCertificate;

  GetRegionSslCertificateComputeV1Args({
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

  factory GetRegionSslCertificateComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSslCertificateComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      sslCertificate: pulumi.Input.asInput<String>(map['sslCertificate']),
    );
  }
}
