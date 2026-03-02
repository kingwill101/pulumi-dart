// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_site_origin_client_certificate_site_origin_client_certificate_args_doc}
/// The set of arguments for SiteOriginClientCertificate.
/// {@endtemplate}
/// {@macro pulumi_esa_site_origin_client_certificate_site_origin_client_certificate_args_doc}
class SiteOriginClientCertificateArgs {
  /// The certificate content.
  final pulumi.Input<String> certificate;
  /// The private key of the certificate.
  final pulumi.Input<String> privateKey;
  /// Site ID.
  final pulumi.Input<String> siteId;
  /// The certificate name.
  final pulumi.Input<String>? siteOriginClientCertificateName;

  /// Creates a new [SiteOriginClientCertificateArgs].
  /// [certificate] The certificate content.
  /// [privateKey] The private key of the certificate.
  /// [siteId] Site ID.
  /// [siteOriginClientCertificateName] The certificate name.
  SiteOriginClientCertificateArgs({
    required this.certificate,
    required this.privateKey,
    required this.siteId,
    this.siteOriginClientCertificateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'privateKey': privateKey,
      'siteId': siteId,
      'siteOriginClientCertificateName': ?siteOriginClientCertificateName,
    };
  }

  factory SiteOriginClientCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SiteOriginClientCertificateArgs(
      certificate: (map['certificate'] as String).input(),
      privateKey: (map['privateKey'] as String).input(),
      siteId: (map['siteId'] as String).input(),
      siteOriginClientCertificateName: map['siteOriginClientCertificateName'] == null ? null : (map['siteOriginClientCertificateName']! as String).input(),
    );
  }
}

