// ignore_for_file: unused_element, unnecessary_cast


class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort {
  /// The lower limit of the port range. This must be less than or equal to the `to_port`.
  final int fromPort;
  /// The upper limit of the port range. This must be greater than or equal to the `from_port`.
  final int toPort;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort].
  /// [fromPort] The lower limit of the port range. This must be less than or equal to the `to_port`.
  /// [toPort] The upper limit of the port range. This must be greater than or equal to the `from_port`.
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}

