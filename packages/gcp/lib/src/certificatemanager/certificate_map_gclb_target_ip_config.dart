// ignore_for_file: unused_element, unnecessary_cast

class CertificateMapGclbTargetIpConfig {
  /// An external IP address
  final String? ipAddress;

  /// A list of ports
  final List<int>? ports;

  /// Creates a new [CertificateMapGclbTargetIpConfig].
  /// [ipAddress] An external IP address
  /// [ports] A list of ports
  CertificateMapGclbTargetIpConfig({
    this.ipAddress,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue;
    }
    return map;
  }

  factory CertificateMapGclbTargetIpConfig.fromMap(Map<String, dynamic> map) {
    return CertificateMapGclbTargetIpConfig(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<int>(),
    );
  }
}
