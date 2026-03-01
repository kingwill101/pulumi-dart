// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_origin_client_certificate_origin_client_certificate_args_doc}
/// The set of arguments for OriginClientCertificate.
/// {@endtemplate}
/// {@macro pulumi_esa_origin_client_certificate_origin_client_certificate_args_doc}
class OriginClientCertificateArgs {
  /// The certificate content.
  final pulumi.Input<String> certificate;
  /// The domain names to associate.
  final pulumi.Input<List<String>>? hostnames;
  /// The certificate name.
  final pulumi.Input<String>? originClientCertificateName;
  /// The private key of the certificate.
  final pulumi.Input<String> privateKey;
  /// Site ID.
  final pulumi.Input<String> siteId;

  /// Creates a new [OriginClientCertificateArgs].
  /// [certificate] The certificate content.
  /// [hostnames] The domain names to associate.
  /// [originClientCertificateName] The certificate name.
  /// [privateKey] The private key of the certificate.
  /// [siteId] Site ID.
  OriginClientCertificateArgs({
    required String certificate,
    List<String>? hostnames,
    String? originClientCertificateName,
    required String privateKey,
    required String siteId,
  }) :
      certificate = pulumi.Input.asInput<String>(certificate),
      hostnames = pulumi.Input.asOptionalInput<List<String>>(hostnames),
      originClientCertificateName = pulumi.Input.asOptionalInput<String>(originClientCertificateName),
      privateKey = pulumi.Input.asInput<String>(privateKey),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'hostnames': ?hostnames,
      'originClientCertificateName': ?originClientCertificateName,
      'privateKey': privateKey,
      'siteId': siteId,
    };
  }

  factory OriginClientCertificateArgs.fromMap(Map<String, dynamic> map) {
    return OriginClientCertificateArgs(
      certificate: map['certificate'] as String,
      hostnames: map['hostnames'] == null ? null : (map['hostnames'] as List).cast<String>(),
      originClientCertificateName: map['originClientCertificateName'] == null ? null : map['originClientCertificateName'] as String,
      privateKey: map['privateKey'] as String,
      siteId: map['siteId'] as String,
    );
  }
}

