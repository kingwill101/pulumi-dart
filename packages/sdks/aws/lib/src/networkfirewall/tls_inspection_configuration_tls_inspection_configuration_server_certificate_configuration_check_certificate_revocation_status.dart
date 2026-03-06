// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus {
  final pulumi.Input<String>? revokedStatusAction;
  final pulumi.Input<String>? unknownStatusAction;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus].
  /// [revokedStatusAction] Optional.
  /// [unknownStatusAction] Optional.
  const TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus({
    this.revokedStatusAction,
    this.unknownStatusAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revokedStatusAction': ?revokedStatusAction,
      'unknownStatusAction': ?unknownStatusAction,
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus(
      revokedStatusAction: (() { final guardedValue = map['revokedStatusAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unknownStatusAction: (() { final guardedValue = map['unknownStatusAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

