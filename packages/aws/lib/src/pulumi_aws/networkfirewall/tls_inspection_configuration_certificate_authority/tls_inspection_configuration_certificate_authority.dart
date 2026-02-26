// ignore_for_file: unused_element, unnecessary_cast

class TlsInspectionConfigurationCertificateAuthority {
  /// ARN of the certificate.
  final String certificateArn;

  /// Serial number of the certificate.
  final String certificateSerial;

  /// Status of the certificate.
  final String status;

  /// Details about the certificate status, including information about certificate errors.
  final String statusMessage;

  TlsInspectionConfigurationCertificateAuthority({
    required this.certificateArn,
    required this.certificateSerial,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    map['certificateSerial'] = certificateSerial;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    return map;
  }

  factory TlsInspectionConfigurationCertificateAuthority.fromMap(
      Map<String, dynamic> map) {
    return TlsInspectionConfigurationCertificateAuthority(
      certificateArn: map['certificateArn'] as String,
      certificateSerial: map['certificateSerial'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}
