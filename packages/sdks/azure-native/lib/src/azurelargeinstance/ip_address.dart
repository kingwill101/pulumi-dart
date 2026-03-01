// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the IP address of the network interface.
class IpAddress {
  /// Specifies the IP address of the network interface.
  final String? ipAddress;

  /// Creates a new [IpAddress].
  /// [ipAddress] Specifies the IP address of the network interface.
  IpAddress({
    this.ipAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
    };
  }

  factory IpAddress.fromMap(Map<String, dynamic> map) {
    return IpAddress(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}

