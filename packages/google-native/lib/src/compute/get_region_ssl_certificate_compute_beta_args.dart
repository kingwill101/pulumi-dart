// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_ssl_certificate_compute_beta_args_doc}
/// Arguments for getRegionSslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_ssl_certificate_compute_beta_args_doc}
class GetRegionSslCertificateComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> sslCertificate;

  /// Creates a new [GetRegionSslCertificateComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [sslCertificate] Required.
  GetRegionSslCertificateComputeBetaArgs({
    String? project,
    required String region,
    required String sslCertificate,
  }) : project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       sslCertificate = pulumi.Input.asInput<String>(sslCertificate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'sslCertificate': sslCertificate,
    };
  }

  factory GetRegionSslCertificateComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionSslCertificateComputeBetaArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      sslCertificate: map['sslCertificate'] as String,
    );
  }
}
