// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_storage_config_block_storage.dart';

class ClusterStorageConfig {
  /// Configuration block with block storage configuration for the cluster. Detailed below.
  final pulumi.Input<ClusterStorageConfigBlockStorage>? blockStorage;

  /// Creates a new [ClusterStorageConfig].
  /// [blockStorage] Configuration block with block storage configuration for the cluster. Detailed below.
  ClusterStorageConfig({this.blockStorage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockStorage':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterStorageConfigBlockStorage,
            Map<String, dynamic>
          >(blockStorage, (value) => value.toMap()),
    };
  }

  factory ClusterStorageConfig.fromMap(Map<String, dynamic> map) {
    return ClusterStorageConfig(
      blockStorage: (() {
        final guardedValue = map['blockStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterStorageConfigBlockStorage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
