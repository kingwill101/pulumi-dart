// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_storage_config_block_storage.dart';

class ClusterStorageConfig {
  /// Configuration block with block storage configuration for the cluster. Detailed below.
  final ClusterStorageConfigBlockStorage? blockStorage;

  /// Creates a new [ClusterStorageConfig].
  /// [blockStorage] Configuration block with block storage configuration for the cluster. Detailed below.
  ClusterStorageConfig({
    this.blockStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockStorage': ?blockStorage == null ? null : blockStorage!.toMap(),
    };
  }

  factory ClusterStorageConfig.fromMap(Map<String, dynamic> map) {
    return ClusterStorageConfig(
      blockStorage: map['blockStorage'] == null ? null : ClusterStorageConfigBlockStorage.fromMap((map['blockStorage'] as Map).cast<String, dynamic>()),
    );
  }
}

