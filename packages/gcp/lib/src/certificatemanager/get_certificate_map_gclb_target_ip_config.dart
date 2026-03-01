// ignore_for_file: unused_element, unnecessary_cast

class GetCertificateMapGclbTargetIpConfig {
  /// An external IP address
  final String ipAddress;

  /// A list of ports
  final List<int> ports;

  /// Creates a new [GetCertificateMapGclbTargetIpConfig].
  /// [ipAddress] An external IP address
  /// [ports] A list of ports
  GetCertificateMapGclbTargetIpConfig({
    required this.ipAddress,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddress': ipAddress, 'ports': ports};
  }

  factory GetCertificateMapGclbTargetIpConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCertificateMapGclbTargetIpConfig(
      ipAddress: map['ipAddress'] as String,
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}
