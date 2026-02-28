// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_cluster_storage_lvp_node_mounts_config.dart';
import 'bare_metal_cluster_storage_lvp_share_config.dart';

class BareMetalClusterStorage {
  /// Specifies the config for local PersistentVolumes backed
  /// by mounted node disks. These disks need to be formatted and mounted by the
  /// user, which can be done before or after cluster creation.
  /// Structure is documented below.
  final BareMetalClusterStorageLvpNodeMountsConfig lvpNodeMountsConfig;

  /// Specifies the config for local PersistentVolumes backed by
  /// subdirectories in a shared filesystem. These subdirectores are
  /// automatically created during cluster creation.
  /// Structure is documented below.
  final BareMetalClusterStorageLvpShareConfig lvpShareConfig;

  /// Creates a new [BareMetalClusterStorage].
  /// [lvpNodeMountsConfig] Specifies the config for local PersistentVolumes backed
  /// [lvpShareConfig] Specifies the config for local PersistentVolumes backed by
  BareMetalClusterStorage({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lvpNodeMountsConfig'] = lvpNodeMountsConfig.toMap();
    map['lvpShareConfig'] = lvpShareConfig.toMap();
    return map;
  }

  factory BareMetalClusterStorage.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterStorage(
      lvpNodeMountsConfig: BareMetalClusterStorageLvpNodeMountsConfig.fromMap(
          (map['lvpNodeMountsConfig'] as Map).cast<String, dynamic>()),
      lvpShareConfig: BareMetalClusterStorageLvpShareConfig.fromMap(
          (map['lvpShareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
