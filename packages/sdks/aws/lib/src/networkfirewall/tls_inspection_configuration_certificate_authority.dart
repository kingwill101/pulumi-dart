// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationCertificateAuthority {
  /// ARN of the certificate.
  final pulumi.Input<String> certificateArn;
  /// Serial number of the certificate.
  final pulumi.Input<String> certificateSerial;
  /// Status of the certificate.
  final pulumi.Input<String> status;
  /// Details about the certificate status, including information about certificate errors.
  final pulumi.Input<String> statusMessage;

  /// Creates a new [TlsInspectionConfigurationCertificateAuthority].
  /// [certificateArn] ARN of the certificate.
  /// [certificateSerial] Serial number of the certificate.
  /// [status] Status of the certificate.
  /// [statusMessage] Details about the certificate status, including information about certificate errors.
  const TlsInspectionConfigurationCertificateAuthority({
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

  factory TlsInspectionConfigurationCertificateAuthority.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationCertificateAuthority(
      certificateArn: pulumi.Input.fromValue(map['certificateArn'] as String),
      certificateSerial: pulumi.Input.fromValue(map['certificateSerial'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}
