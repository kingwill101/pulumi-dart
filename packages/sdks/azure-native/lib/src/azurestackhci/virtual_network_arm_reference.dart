// ignore_for_file: unused_element, unnecessary_cast


/// The Azure Resource ID for a Virtual Network
class VirtualNetworkArmReference {
  /// The Azure Resource ID for a Virtual Network.
  final String? resourceId;

  /// Creates a new [VirtualNetworkArmReference].
  /// [resourceId] The Azure Resource ID for a Virtual Network.
  VirtualNetworkArmReference({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory VirtualNetworkArmReference.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkArmReference(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

