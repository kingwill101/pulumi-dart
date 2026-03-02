// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAssociationCertificateSettings {
  /// DNS records for certificate verification in a space-delimited format (`<record> CNAME <target>`).
  final pulumi.Input<String>? certificateVerificationDnsRecord;
  /// The Amazon resource name (ARN) for the custom certificate.
  /// Required when `type` is `CUSTOM`.
  final pulumi.Input<String>? customCertificateArn;
  /// The certificate type.
  /// Valid values are `AMPLIFY_MANAGED` and `CUSTOM`.
  final pulumi.Input<String> type;

  /// Creates a new [DomainAssociationCertificateSettings].
  /// [certificateVerificationDnsRecord] DNS records for certificate verification in a space-delimited format (`<record> CNAME <target>`).
  /// [customCertificateArn] The Amazon resource name (ARN) for the custom certificate.
  /// [type] The certificate type.
  DomainAssociationCertificateSettings({
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
      certificateVerificationDnsRecord: map['certificateVerificationDnsRecord'] == null ? null : (map['certificateVerificationDnsRecord'] as String).input(),
      customCertificateArn: map['customCertificateArn'] == null ? null : (map['customCertificateArn'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

