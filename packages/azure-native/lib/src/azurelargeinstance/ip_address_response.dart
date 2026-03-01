// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the IP address of the network interface.
class IpAddressResponse {
  /// Specifies the IP address of the network interface.
  final String? ipAddress;

  /// Creates a new [IpAddressResponse].
  /// [ipAddress] Specifies the IP address of the network interface.
  IpAddressResponse({
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
    };
  }

  factory IpAddressResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressResponse(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}

