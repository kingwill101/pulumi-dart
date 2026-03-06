// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_client_ca_certificate_client_ca_certificate_args_doc}
/// The set of arguments for ClientCaCertificate.
/// {@endtemplate}
/// {@macro pulumi_esa_client_ca_certificate_client_ca_certificate_args_doc}
class ClientCaCertificateArgs {
  /// Certificate content.
  final pulumi.Input<String> certificate;
  /// The certificate name.
  final pulumi.Input<String>? clientCaCertName;
  /// Site Id
  final pulumi.Input<String> siteId;

  /// Creates a new [ClientCaCertificateArgs].
  /// [certificate] Certificate content.
  /// [clientCaCertName] The certificate name.
  /// [siteId] Site Id
  const ClientCaCertificateArgs({
    required this.certificate,
    this.clientCaCertName,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'clientCaCertName': ?clientCaCertName,
      'siteId': siteId,
    };
  }

  factory ClientCaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ClientCaCertificateArgs(
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      clientCaCertName: (() { final guardedValue = map['clientCaCertName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

