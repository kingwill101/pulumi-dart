// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate {
  /// ARN of the Certificate Manager SSL/TLS server certificate that's used for inbound SSL/TLS inspection.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate].
  /// [resourceArn] ARN of the Certificate Manager SSL/TLS server certificate that's used for inbound SSL/TLS inspection.
  const TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate({
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': ?resourceArn,
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate(
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
