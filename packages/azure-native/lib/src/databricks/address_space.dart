// ignore_for_file: unused_element, unnecessary_cast


/// AddressSpace contains an array of IP address ranges that can be used by subnets of the virtual network.
class AddressSpace {
  /// A list of address blocks reserved for this virtual network in CIDR notation.
  final List<String>? addressPrefixes;

  /// Creates a new [AddressSpace].
  /// [addressPrefixes] A list of address blocks reserved for this virtual network in CIDR notation.
  AddressSpace({
    this.addressPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
    };
  }

  factory AddressSpace.fromMap(Map<String, dynamic> map) {
    return AddressSpace(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
    );
  }
}

