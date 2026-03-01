// ignore_for_file: unused_element, unnecessary_cast


/// Effective Virtual Network
class EffectiveVirtualNetworkResponse {
  /// Effective vnet Id.
  final String? id;
  /// Location of vnet.
  final String? location;
  /// Membership Type.
  final String? membershipType;

  /// Creates a new [EffectiveVirtualNetworkResponse].
  /// [id] Effective vnet Id.
  /// [location] Location of vnet.
  /// [membershipType] Membership Type.
  EffectiveVirtualNetworkResponse({
    this.id,
    this.location,
    this.membershipType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'membershipType': ?membershipType,
    };
  }

  factory EffectiveVirtualNetworkResponse.fromMap(Map<String, dynamic> map) {
    return EffectiveVirtualNetworkResponse(
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      membershipType: map['membershipType'] == null ? null : map['membershipType'] as String,
    );
  }
}

