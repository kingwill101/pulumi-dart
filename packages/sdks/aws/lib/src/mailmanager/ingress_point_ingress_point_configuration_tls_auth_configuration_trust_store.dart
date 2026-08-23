// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore {
  /// PEM-encoded certificate authority (CA) content used to validate client certificates.
  final pulumi.Input<String> caContent;
  /// PEM-encoded certificate revocation list (CRL) content used to check whether client certificates have been revoked.
  final pulumi.Input<String>? crlContent;
  /// ARN of the AWS KMS key used to decrypt the CRL content.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore].
  /// [caContent] PEM-encoded certificate authority (CA) content used to validate client certificates.
  /// [crlContent] PEM-encoded certificate revocation list (CRL) content used to check whether client certificates have been revoked.
  /// [kmsKeyArn] ARN of the AWS KMS key used to decrypt the CRL content.
  const IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore({
    required this.caContent,
    this.crlContent,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caContent': caContent,
      'crlContent': ?crlContent,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore.fromMap(Map<String, dynamic> map) {
    return IngressPointIngressPointConfigurationTlsAuthConfigurationTrustStore(
      caContent: pulumi.Input.fromValue(map['caContent'] as String),
      crlContent: (() { final guardedValue = map['crlContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
