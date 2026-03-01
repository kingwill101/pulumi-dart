// ignore_for_file: unused_element, unnecessary_cast


/// Neighbor Address properties.
class NeighborAddressResponse {
  /// IP Address.
  final String? address;
  /// Configuration state of the resource.
  final String configurationState;

  /// Creates a new [NeighborAddressResponse].
  /// [address] IP Address.
  /// [configurationState] Configuration state of the resource.
  NeighborAddressResponse({
    this.address,
    required this.configurationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'configurationState': configurationState,
    };
  }

  factory NeighborAddressResponse.fromMap(Map<String, dynamic> map) {
    return NeighborAddressResponse(
      address: map['address'] == null ? null : map['address'] as String,
      configurationState: map['configurationState'] as String,
    );
  }
}

