// ignore_for_file: unused_element, unnecessary_cast

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate {
  /// ARN of the Certificate Manager SSL/TLS server certificate that's used for inbound SSL/TLS inspection.
  final String? resourceArn;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate].
  /// [resourceArn] ARN of the Certificate Manager SSL/TLS server certificate that's used for inbound SSL/TLS inspection.
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate({
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceArnValue = resourceArn;
    if (resourceArnValue != null) {
      map['resourceArn'] = resourceArnValue;
    }
    return map;
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate.fromMap(
      Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate(
      resourceArn:
          map['resourceArn'] == null ? null : map['resourceArn'] as String,
    );
  }
}
