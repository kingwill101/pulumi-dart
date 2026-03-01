// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Virtual Network
class VirtualNetworkArmReferenceResponse {
  /// The Azure Resource ID for a Virtual Network.
  final String? resourceId;

  /// Creates a new [VirtualNetworkArmReferenceResponse].
  /// [resourceId] The Azure Resource ID for a Virtual Network.
  VirtualNetworkArmReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory VirtualNetworkArmReferenceResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArmReferenceResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

