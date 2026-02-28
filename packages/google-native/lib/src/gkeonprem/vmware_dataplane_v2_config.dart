// ignore_for_file: unused_element, unnecessary_cast

/// Contains configurations for Dataplane V2, which is optimized dataplane for Kubernetes networking. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dataplane-v2
class VmwareDataplaneV2Config {
  /// Enable advanced networking which requires dataplane_v2_enabled to be set true.
  final bool? advancedNetworking;

  /// Enables Dataplane V2.
  final bool? dataplaneV2Enabled;

  /// Enable Dataplane V2 for clusters with Windows nodes.
  final bool? windowsDataplaneV2Enabled;

  /// Creates a new [VmwareDataplaneV2Config].
  /// [advancedNetworking] Enable advanced networking which requires dataplane_v2_enabled to be set true.
  /// [dataplaneV2Enabled] Enables Dataplane V2.
  /// [windowsDataplaneV2Enabled] Enable Dataplane V2 for clusters with Windows nodes.
  VmwareDataplaneV2Config({
    this.advancedNetworking,
    this.dataplaneV2Enabled,
    this.windowsDataplaneV2Enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedNetworkingValue = advancedNetworking;
    if (advancedNetworkingValue != null) {
      map['advancedNetworking'] = advancedNetworkingValue;
    }
    final dataplaneV2EnabledValue = dataplaneV2Enabled;
    if (dataplaneV2EnabledValue != null) {
      map['dataplaneV2Enabled'] = dataplaneV2EnabledValue;
    }
    final windowsDataplaneV2EnabledValue = windowsDataplaneV2Enabled;
    if (windowsDataplaneV2EnabledValue != null) {
      map['windowsDataplaneV2Enabled'] = windowsDataplaneV2EnabledValue;
    }
    return map;
  }

  factory VmwareDataplaneV2Config.fromMap(Map<String, dynamic> map) {
    return VmwareDataplaneV2Config(
      advancedNetworking: map['advancedNetworking'] == null
          ? null
          : map['advancedNetworking'] as bool,
      dataplaneV2Enabled: map['dataplaneV2Enabled'] == null
          ? null
          : map['dataplaneV2Enabled'] as bool,
      windowsDataplaneV2Enabled: map['windowsDataplaneV2Enabled'] == null
          ? null
          : map['windowsDataplaneV2Enabled'] as bool,
    );
  }
}
