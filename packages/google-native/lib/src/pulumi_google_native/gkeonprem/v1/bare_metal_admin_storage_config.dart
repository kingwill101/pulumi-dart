// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_lvp_config.dart';
import 'bare_metal_lvp_share_config.dart';

/// BareMetalAdminStorageConfig specifies the cluster storage configuration.
class BareMetalAdminStorageConfig {
  /// Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  final BareMetalLvpConfig lvpNodeMountsConfig;

  /// Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  final BareMetalLvpShareConfig lvpShareConfig;

  BareMetalAdminStorageConfig({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lvpNodeMountsConfig'] = lvpNodeMountsConfig.toMap();
    map['lvpShareConfig'] = lvpShareConfig.toMap();
    return map;
  }

  factory BareMetalAdminStorageConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminStorageConfig(
      lvpNodeMountsConfig: BareMetalLvpConfig.fromMap(
          (map['lvpNodeMountsConfig'] as Map).cast<String, dynamic>()),
      lvpShareConfig: BareMetalLvpShareConfig.fromMap(
          (map['lvpShareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
