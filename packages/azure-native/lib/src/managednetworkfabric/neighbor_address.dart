// ignore_for_file: unused_element, unnecessary_cast


/// Neighbor Address properties.
class NeighborAddress {
  /// IP Address.
  final String? address;

  /// Creates a new [NeighborAddress].
  /// [address] IP Address.
  NeighborAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory NeighborAddress.fromMap(Map<String, dynamic> map) {
    return NeighborAddress(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

