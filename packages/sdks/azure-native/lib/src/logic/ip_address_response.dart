// ignore_for_file: unused_element, unnecessary_cast


/// The ip address.
class IpAddressResponse {
  /// The address.
  final String? address;

  /// Creates a new [IpAddressResponse].
  /// [address] The address.
  IpAddressResponse({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory IpAddressResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressResponse(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

