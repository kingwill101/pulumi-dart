// ignore_for_file: unused_element, unnecessary_cast


class NetworkMac {
  /// Specifies the actual MAC address associated with the network.
  final String? address;

  /// Creates a new [NetworkMac].
  /// [address] Specifies the actual MAC address associated with the network.
  NetworkMac({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory NetworkMac.fromMap(Map<String, dynamic> map) {
    return NetworkMac(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

