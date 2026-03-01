// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a vSphere Replication (VR) addon
class AddonVrPropertiesResponse {
  /// Addon type
  /// Expected value is 'VR'.
  final String addonType;
  /// The state of the addon provisioning
  final String provisioningState;
  /// The vSphere Replication Server (VRS) count
  final int vrsCount;

  /// Creates a new [AddonVrPropertiesResponse].
  /// [addonType] Addon type
  /// [provisioningState] The state of the addon provisioning
  /// [vrsCount] The vSphere Replication Server (VRS) count
  AddonVrPropertiesResponse({
    required this.addonType,
    required this.provisioningState,
    required this.vrsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonType': addonType,
      'provisioningState': provisioningState,
      'vrsCount': vrsCount,
    };
  }

  factory AddonVrPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddonVrPropertiesResponse(
      addonType: map['addonType'] as String,
      provisioningState: map['provisioningState'] as String,
      vrsCount: map['vrsCount'] as int,
    );
  }
}

