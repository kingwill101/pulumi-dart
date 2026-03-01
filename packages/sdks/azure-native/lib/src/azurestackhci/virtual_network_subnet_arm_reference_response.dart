// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Virtual Network subnet
class VirtualNetworkSubnetArmReferenceResponse {
  /// The Azure Resource ID for a Virtual Network subnet.
  final String? resourceId;

  /// Creates a new [VirtualNetworkSubnetArmReferenceResponse].
  /// [resourceId] The Azure Resource ID for a Virtual Network subnet.
  VirtualNetworkSubnetArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory VirtualNetworkSubnetArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetArmReferenceResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

