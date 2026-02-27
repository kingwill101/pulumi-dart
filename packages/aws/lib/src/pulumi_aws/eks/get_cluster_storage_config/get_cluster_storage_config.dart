// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_storage_config_block_storage/get_cluster_storage_config_block_storage.dart';

class GetClusterStorageConfig {
  /// Contains block storage configuration for EKS Auto Mode enabled cluster.
  final List<GetClusterStorageConfigBlockStorage> blockStorages;

  GetClusterStorageConfig({
    required this.blockStorages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blockStorages'] = pulumi.Input.encodeList<
        GetClusterStorageConfigBlockStorage,
        Map<String, dynamic>>(blockStorages, (value) => value.toMap());
    return map;
  }

  factory GetClusterStorageConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterStorageConfig(
      blockStorages:
          pulumi.Input.decodeList<GetClusterStorageConfigBlockStorage>(
              map['blockStorages'],
              (value) => GetClusterStorageConfigBlockStorage.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
