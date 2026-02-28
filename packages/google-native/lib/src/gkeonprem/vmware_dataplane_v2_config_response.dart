// ignore_for_file: unused_element, unnecessary_cast

/// Contains configurations for Dataplane V2, which is optimized dataplane for Kubernetes networking. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dataplane-v2
class VmwareDataplaneV2ConfigResponse {
  /// Enable advanced networking which requires dataplane_v2_enabled to be set true.
  final bool advancedNetworking;

  /// Enables Dataplane V2.
  final bool dataplaneV2Enabled;

  /// Enable Dataplane V2 for clusters with Windows nodes.
  final bool windowsDataplaneV2Enabled;

  /// Creates a new [VmwareDataplaneV2ConfigResponse].
  /// [advancedNetworking] Enable advanced networking which requires dataplane_v2_enabled to be set true.
  /// [dataplaneV2Enabled] Enables Dataplane V2.
  /// [windowsDataplaneV2Enabled] Enable Dataplane V2 for clusters with Windows nodes.
  VmwareDataplaneV2ConfigResponse({
    required this.advancedNetworking,
    required this.dataplaneV2Enabled,
    required this.windowsDataplaneV2Enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedNetworking'] = advancedNetworking;
    map['dataplaneV2Enabled'] = dataplaneV2Enabled;
    map['windowsDataplaneV2Enabled'] = windowsDataplaneV2Enabled;
    return map;
  }

  factory VmwareDataplaneV2ConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareDataplaneV2ConfigResponse(
      advancedNetworking: map['advancedNetworking'] as bool,
      dataplaneV2Enabled: map['dataplaneV2Enabled'] as bool,
      windowsDataplaneV2Enabled: map['windowsDataplaneV2Enabled'] as bool,
    );
  }
}
