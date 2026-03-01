// ignore_for_file: unused_element, unnecessary_cast

/// Defines IP configuration where this Certificate Map is serving.
class IpConfigResponse {
  /// An external IP address.
  final String ipAddress;

  /// Ports.
  final List<int> ports;

  /// Creates a new [IpConfigResponse].
  /// [ipAddress] An external IP address.
  /// [ports] Ports.
  IpConfigResponse({required this.ipAddress, required this.ports});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddress': ipAddress, 'ports': ports};
  }

  factory IpConfigResponse.fromMap(Map<String, dynamic> map) {
    return IpConfigResponse(
      ipAddress: map['ipAddress'] as String,
      ports: (map['ports'] as List).cast<int>(),
    );
  }
}
