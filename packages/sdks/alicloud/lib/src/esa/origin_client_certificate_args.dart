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
    required this.certificate,
    this.hostnames,
    this.originClientCertificateName,
    required this.privateKey,
    required this.siteId,
  });

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
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      hostnames: (() {
        final guardedValue = map['hostnames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      originClientCertificateName: (() {
        final guardedValue = map['originClientCertificateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
