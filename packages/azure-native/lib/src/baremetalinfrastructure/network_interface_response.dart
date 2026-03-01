// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the network interfaces of a bare metal resource.
class NetworkInterfaceResponse {
  /// Specifies the IP address of the network interface.
  final String? ipAddress;

  /// Creates a new [NetworkInterfaceResponse].
  /// [ipAddress] Specifies the IP address of the network interface.
  NetworkInterfaceResponse({
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}

