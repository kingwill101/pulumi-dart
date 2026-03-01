// ignore_for_file: unused_element, unnecessary_cast


/// The ip address.
class IpAddress {
  /// The address.
  final String? address;

  /// Creates a new [IpAddress].
  /// [address] The address.
  IpAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory IpAddress.fromMap(Map<String, dynamic> map) {
    return IpAddress(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

