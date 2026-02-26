// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_storage_config_block_storage/cluster_storage_config_block_storage.dart';

class ClusterStorageConfig {
  /// Configuration block with block storage configuration for the cluster. Detailed below.
  final ClusterStorageConfigBlockStorage? blockStorage;

  ClusterStorageConfig({
    this.blockStorage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockStorageValue = blockStorage;
    if (blockStorageValue != null) {
      map['blockStorage'] = blockStorageValue.toMap();
    }
    return map;
  }

  factory ClusterStorageConfig.fromMap(Map<String, dynamic> map) {
    return ClusterStorageConfig(
      blockStorage: map['blockStorage'] == null
          ? null
          : ClusterStorageConfigBlockStorage.fromMap(
              (map['blockStorage'] as Map).cast<String, dynamic>()),
    );
  }
}
