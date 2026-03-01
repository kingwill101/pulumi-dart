// ignore_for_file: unused_element, unnecessary_cast


class InterfacePublicIpv4AssignedAddress {
  /// The assigned IPv4 address.
  final String? address;
  /// Whether this address is the primary address for the interface.
  final bool? primary;

  /// Creates a new [InterfacePublicIpv4AssignedAddress].
  /// [address] The assigned IPv4 address.
  /// [primary] Whether this address is the primary address for the interface.
  InterfacePublicIpv4AssignedAddress({
    this.address,
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'primary': ?primary,
    };
  }

  factory InterfacePublicIpv4AssignedAddress.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4AssignedAddress(
      address: map['address'] == null ? null : map['address'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
    );
  }
}

