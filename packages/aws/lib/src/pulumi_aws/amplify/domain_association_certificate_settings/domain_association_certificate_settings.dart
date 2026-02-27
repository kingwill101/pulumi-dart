// ignore_for_file: unused_element, unnecessary_cast

class DomainAssociationCertificateSettings {
  /// DNS records for certificate verification in a space-delimited format (`<record> CNAME <target>`).
  final String? certificateVerificationDnsRecord;

  /// The Amazon resource name (ARN) for the custom certificate.
  /// Required when `type` is `CUSTOM`.
  final String? customCertificateArn;

  /// The certificate type.
  /// Valid values are `AMPLIFY_MANAGED` and `CUSTOM`.
  final String type;

  DomainAssociationCertificateSettings({
    this.certificateVerificationDnsRecord,
    this.customCertificateArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateVerificationDnsRecordValue =
        certificateVerificationDnsRecord;
    if (certificateVerificationDnsRecordValue != null) {
      map['certificateVerificationDnsRecord'] =
          certificateVerificationDnsRecordValue;
    }
    final customCertificateArnValue = customCertificateArn;
    if (customCertificateArnValue != null) {
      map['customCertificateArn'] = customCertificateArnValue;
    }
    map['type'] = type;
    return map;
  }

  factory DomainAssociationCertificateSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainAssociationCertificateSettings(
      certificateVerificationDnsRecord:
          map['certificateVerificationDnsRecord'] == null
              ? null
              : map['certificateVerificationDnsRecord'] as String,
      customCertificateArn: map['customCertificateArn'] == null
          ? null
          : map['customCertificateArn'] as String,
      type: map['type'] as String,
    );
  }
}
