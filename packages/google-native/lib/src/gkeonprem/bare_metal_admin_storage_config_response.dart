// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_lvp_config_response.dart';
import 'bare_metal_lvp_share_config_response.dart';

/// BareMetalAdminStorageConfig specifies the cluster storage configuration.
class BareMetalAdminStorageConfigResponse {
  /// Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  final BareMetalLvpConfigResponse lvpNodeMountsConfig;
  /// Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  final BareMetalLvpShareConfigResponse lvpShareConfig;

  /// Creates a new [BareMetalAdminStorageConfigResponse].
  /// [lvpNodeMountsConfig] Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  /// [lvpShareConfig] Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  BareMetalAdminStorageConfigResponse({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpNodeMountsConfig': lvpNodeMountsConfig.toMap(),
      'lvpShareConfig': lvpShareConfig.toMap(),
    };
  }

  factory BareMetalAdminStorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminStorageConfigResponse(
      lvpNodeMountsConfig: BareMetalLvpConfigResponse.fromMap((map['lvpNodeMountsConfig'] as Map).cast<String, dynamic>()),
      lvpShareConfig: BareMetalLvpShareConfigResponse.fromMap((map['lvpShareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

