// ignore_for_file: unused_element, unnecessary_cast

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus {
  final String? revokedStatusAction;
  final String? unknownStatusAction;

  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus({
    this.revokedStatusAction,
    this.unknownStatusAction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final revokedStatusActionValue = revokedStatusAction;
    if (revokedStatusActionValue != null) {
      map['revokedStatusAction'] = revokedStatusActionValue;
    }
    final unknownStatusActionValue = unknownStatusAction;
    if (unknownStatusActionValue != null) {
      map['unknownStatusAction'] = unknownStatusActionValue;
    }
    return map;
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus.fromMap(
      Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus(
      revokedStatusAction: map['revokedStatusAction'] == null
          ? null
          : map['revokedStatusAction'] as String,
      unknownStatusAction: map['unknownStatusAction'] == null
          ? null
          : map['unknownStatusAction'] as String,
    );
  }
}
