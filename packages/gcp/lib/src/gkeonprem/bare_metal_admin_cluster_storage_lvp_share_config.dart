// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_storage_lvp_share_config_lvp_config.dart';

class BareMetalAdminClusterStorageLvpShareConfig {
  /// Defines the machine path and storage class for the LVP Share.
  /// Structure is documented below.
  final BareMetalAdminClusterStorageLvpShareConfigLvpConfig lvpConfig;

  /// The number of subdirectories to create under path.
  final int? sharedPathPvCount;

  /// Creates a new [BareMetalAdminClusterStorageLvpShareConfig].
  /// [lvpConfig] Defines the machine path and storage class for the LVP Share.
  /// [sharedPathPvCount] The number of subdirectories to create under path.
  BareMetalAdminClusterStorageLvpShareConfig({
    required this.lvpConfig,
    this.sharedPathPvCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpConfig': lvpConfig.toMap(),
      'sharedPathPvCount': ?sharedPathPvCount,
    };
  }

  factory BareMetalAdminClusterStorageLvpShareConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminClusterStorageLvpShareConfig(
      lvpConfig: BareMetalAdminClusterStorageLvpShareConfigLvpConfig.fromMap(
        (map['lvpConfig'] as Map).cast<String, dynamic>(),
      ),
      sharedPathPvCount: map['sharedPathPvCount'] == null
          ? null
          : map['sharedPathPvCount'] as int,
    );
  }
}
