// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAssociationCertificateSettings {
  /// DNS records for certificate verification in a space-delimited format (`&lt;record&gt; CNAME &lt;target&gt;`).
  final pulumi.Input<String>? certificateVerificationDnsRecord;
  /// The Amazon resource name (ARN) for the custom certificate.
  /// Required when `type` is `CUSTOM`.
  final pulumi.Input<String>? customCertificateArn;
  /// The certificate type.
  /// Valid values are `AMPLIFY_MANAGED` and `CUSTOM`.
  final pulumi.Input<String> type;

  /// Creates a new [DomainAssociationCertificateSettings].
  /// [certificateVerificationDnsRecord] DNS records for certificate verification in a space-delimited format (`&lt;record&gt; CNAME &lt;target&gt;`).
  /// [customCertificateArn] The Amazon resource name (ARN) for the custom certificate.
  /// [type] The certificate type.
  const DomainAssociationCertificateSettings({
    this.certificateVerificationDnsRecord,
    this.customCertificateArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateVerificationDnsRecord': ?certificateVerificationDnsRecord,
      'customCertificateArn': ?customCertificateArn,
      'type': type,
    };
  }

  factory DomainAssociationCertificateSettings.fromMap(Map<String, dynamic> map) {
    return DomainAssociationCertificateSettings(
      certificateVerificationDnsRecord: (() { final guardedValue = map['certificateVerificationDnsRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customCertificateArn: (() { final guardedValue = map['customCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

