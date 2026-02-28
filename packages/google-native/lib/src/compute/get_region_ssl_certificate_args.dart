// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_ssl_certificate_args_doc}
/// Arguments for getRegionSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_ssl_certificate_args_doc}
class GetRegionSslCertificateArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetRegionSslCertificateArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [sslCertificate] Required.
  GetRegionSslCertificateArgs({
    String? project,
    required String region,
    required String sslCertificate,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        sslCertificate = pulumi.Input.asInput<String>(sslCertificate);

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

  factory GetRegionSslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionSslCertificateArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      sslCertificate: map['sslCertificate'] as String,
    );
  }
}
