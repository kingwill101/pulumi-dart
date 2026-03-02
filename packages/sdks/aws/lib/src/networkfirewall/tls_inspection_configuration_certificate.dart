// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationCertificate {
  /// ARN of the certificate.
  final pulumi.Input<String> certificateArn;
  /// Serial number of the certificate.
  final pulumi.Input<String> certificateSerial;
  /// Status of the certificate.
  final pulumi.Input<String> status;
  /// Details about the certificate status, including information about certificate errors.
  final pulumi.Input<String> statusMessage;

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

  factory TlsInspectionConfigurationCertificate.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationCertificate(
      certificateArn: (map['certificateArn'] as String).input(),
      certificateSerial: (map['certificateSerial'] as String).input(),
      status: (map['status'] as String).input(),
      statusMessage: (map['statusMessage'] as String).input(),
    );
  }
}

