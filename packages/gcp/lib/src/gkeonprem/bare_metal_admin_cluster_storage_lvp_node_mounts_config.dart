// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterStorageLvpNodeMountsConfig {
  /// The host machine path.
  final String path;

  /// The StorageClass name that PVs will be created with.
  final String storageClass;

  /// Creates a new [BareMetalAdminClusterStorageLvpNodeMountsConfig].
  /// [path] The host machine path.
  /// [storageClass] The StorageClass name that PVs will be created with.
  BareMetalAdminClusterStorageLvpNodeMountsConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['storageClass'] = storageClass;
    return map;
  }

  factory BareMetalAdminClusterStorageLvpNodeMountsConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterStorageLvpNodeMountsConfig(
      path: map['path'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}
