// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus {
  final pulumi.Input<String>? revokedStatusAction;
  final pulumi.Input<String>? unknownStatusAction;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus].
  /// [revokedStatusAction] Optional.
  /// [unknownStatusAction] Optional.
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus({
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
      revokedStatusAction: map['revokedStatusAction'] == null ? null : (map['revokedStatusAction'] as String).input(),
      unknownStatusAction: map['unknownStatusAction'] == null ? null : (map['unknownStatusAction'] as String).input(),
    );
  }
}

