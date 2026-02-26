// ignore_for_file: unused_element, unnecessary_cast

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort {
  /// The lower limit of the port range. This must be less than or equal to the <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span>.
  final int fromPort;

  /// The upper limit of the port range. This must be greater than or equal to the <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span>.
  final int toPort;

  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fromPort'] = fromPort;
    map['toPort'] = toPort;
    return map;
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort.fromMap(
      Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPort(
      fromPort: map['fromPort'] as int,
      toPort: map['toPort'] as int,
    );
  }
}
