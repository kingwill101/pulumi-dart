// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_cluster_storage_lvp_share_config_lvp_config.dart';

class BareMetalClusterStorageLvpShareConfig {
  /// Defines the machine path and storage class for the LVP Share.
  /// Structure is documented below.
  final BareMetalClusterStorageLvpShareConfigLvpConfig lvpConfig;

  /// The number of subdirectories to create under path.
  final int? sharedPathPvCount;

  /// Creates a new [BareMetalClusterStorageLvpShareConfig].
  /// [lvpConfig] Defines the machine path and storage class for the LVP Share.
  /// [sharedPathPvCount] The number of subdirectories to create under path.
  BareMetalClusterStorageLvpShareConfig({
    required this.lvpConfig,
    this.sharedPathPvCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lvpConfig'] = lvpConfig.toMap();
    final sharedPathPvCountValue = sharedPathPvCount;
    if (sharedPathPvCountValue != null) {
      map['sharedPathPvCount'] = sharedPathPvCountValue;
    }
    return map;
  }

  factory BareMetalClusterStorageLvpShareConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterStorageLvpShareConfig(
      lvpConfig: BareMetalClusterStorageLvpShareConfigLvpConfig.fromMap(
          (map['lvpConfig'] as Map).cast<String, dynamic>()),
      sharedPathPvCount: map['sharedPathPvCount'] == null
          ? null
          : map['sharedPathPvCount'] as int,
    );
  }
}
