// ignore_for_file: unused_element, unnecessary_cast


/// The network interface definition.
class NetworkInterface {
  /// Private Ip address of the interface
  final String? privateIpAddress;

  /// Creates a new [NetworkInterface].
  /// [privateIpAddress] Private Ip address of the interface
  NetworkInterface({
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
    );
  }
}

