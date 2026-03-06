// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_origin_ca_certificate_origin_ca_certificate_args_doc}
/// The set of arguments for OriginCaCertificate.
/// {@endtemplate}
/// {@macro pulumi_esa_origin_ca_certificate_origin_ca_certificate_args_doc}
class OriginCaCertificateArgs {
  /// Certificate content.
  final pulumi.Input<String> certificate;
  /// The certificate name.
  final pulumi.Input<String>? name;
  /// Site Id
  final pulumi.Input<String> siteId;

  /// Creates a new [OriginCaCertificateArgs].
  /// [certificate] Certificate content.
  /// [name] The certificate name.
  /// [siteId] Site Id
  const OriginCaCertificateArgs({
    required this.certificate,
    this.name,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'name': ?name,
      'siteId': siteId,
    };
  }

  factory OriginCaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return OriginCaCertificateArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

