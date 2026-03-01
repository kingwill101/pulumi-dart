// ignore_for_file: unused_element, unnecessary_cast

class TlsInspectionConfigurationCertificate {
  /// ARN of the certificate.
  final String certificateArn;

  /// Serial number of the certificate.
  final String certificateSerial;

  /// Status of the certificate.
  final String status;

  /// Details about the certificate status, including information about certificate errors.
  final String statusMessage;

  /// Creates a new [TlsInspectionConfigurationCertificate].
  /// [certificateArn] ARN of the certificate.
  /// [certificateSerial] Serial number of the certificate.
  /// [status] Status of the certificate.
  /// [statusMessage] Details about the certificate status, including information about certificate errors.
  TlsInspectionConfigurationCertificate({
    required this.certificateArn,
    required this.certificateSerial,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': certificateArn,
      'certificateSerial': certificateSerial,
      'status': status,
      'statusMessage': statusMessage,
    };
  }

  factory TlsInspectionConfigurationCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return TlsInspectionConfigurationCertificate(
      certificateArn: map['certificateArn'] as String,
      certificateSerial: map['certificateSerial'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}
