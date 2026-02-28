// ignore_for_file: unused_element, unnecessary_cast

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort {
  /// The lower limit of the port range. This must be less than or equal to the `to_port`.
  final int fromPort;

  /// The upper limit of the port range. This must be greater than or equal to the `from_port`.
  final int toPort;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort].
  /// [fromPort] The lower limit of the port range. This must be less than or equal to the `to_port`.
  /// [toPort] The upper limit of the port range. This must be greater than or equal to the `from_port`.
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort.fromMap(
      Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePort(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}
