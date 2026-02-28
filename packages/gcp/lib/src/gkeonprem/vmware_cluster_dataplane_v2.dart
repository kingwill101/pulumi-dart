// ignore_for_file: unused_element, unnecessary_cast


class VMwareClusterDataplaneV2 {
  /// Enable advanced networking which requires dataplane_v2_enabled to be set true.
  final bool? advancedNetworking;
  /// Enables Dataplane V2.
  final bool? dataplaneV2Enabled;
  /// Enable Dataplane V2 for clusters with Windows nodes.
  final bool? windowsDataplaneV2Enabled;

  /// Creates a new [VMwareClusterDataplaneV2].
  /// [advancedNetworking] Enable advanced networking which requires dataplane_v2_enabled to be set true.
  /// [dataplaneV2Enabled] Enables Dataplane V2.
  /// [windowsDataplaneV2Enabled] Enable Dataplane V2 for clusters with Windows nodes.
  VMwareClusterDataplaneV2({
    this.advancedNetworking,
    this.dataplaneV2Enabled,
    this.windowsDataplaneV2Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedNetworking': ?advancedNetworking,
      'dataplaneV2Enabled': ?dataplaneV2Enabled,
      'windowsDataplaneV2Enabled': ?windowsDataplaneV2Enabled,
    };
  }

  factory VMwareClusterDataplaneV2.fromMap(Map<String, dynamic> map) {
    return VMwareClusterDataplaneV2(
      advancedNetworking: map['advancedNetworking'] == null ? null : map['advancedNetworking'] as bool,
      dataplaneV2Enabled: map['dataplaneV2Enabled'] == null ? null : map['dataplaneV2Enabled'] as bool,
      windowsDataplaneV2Enabled: map['windowsDataplaneV2Enabled'] == null ? null : map['windowsDataplaneV2Enabled'] as bool,
    );
  }
}

