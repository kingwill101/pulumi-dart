// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_cluster_storage_lvp_node_mounts_config.dart';
import 'bare_metal_admin_cluster_storage_lvp_share_config.dart';

class BareMetalAdminClusterStorage {
  /// Specifies the config for local PersistentVolumes backed
  /// by mounted node disks. These disks need to be formatted and mounted by the
  /// user, which can be done before or after cluster creation.
  /// Structure is documented below.
  final BareMetalAdminClusterStorageLvpNodeMountsConfig lvpNodeMountsConfig;

  /// Specifies the config for local PersistentVolumes backed by
  /// subdirectories in a shared filesystem. These subdirectores are
  /// automatically created during cluster creation.
  /// Structure is documented below.
  final BareMetalAdminClusterStorageLvpShareConfig lvpShareConfig;

  /// Creates a new [BareMetalAdminClusterStorage].
  /// [lvpNodeMountsConfig] Specifies the config for local PersistentVolumes backed
  /// [lvpShareConfig] Specifies the config for local PersistentVolumes backed by
  BareMetalAdminClusterStorage({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lvpNodeMountsConfig'] = lvpNodeMountsConfig.toMap();
    map['lvpShareConfig'] = lvpShareConfig.toMap();
    return map;
  }

  factory BareMetalAdminClusterStorage.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterStorage(
      lvpNodeMountsConfig:
          BareMetalAdminClusterStorageLvpNodeMountsConfig.fromMap(
              (map['lvpNodeMountsConfig'] as Map).cast<String, dynamic>()),
      lvpShareConfig: BareMetalAdminClusterStorageLvpShareConfig.fromMap(
          (map['lvpShareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
