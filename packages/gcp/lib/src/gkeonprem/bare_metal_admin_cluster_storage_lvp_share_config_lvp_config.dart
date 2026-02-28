// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterStorageLvpShareConfigLvpConfig {
  /// The host machine path.
  final String path;

  /// The StorageClass name that PVs will be created with.
  final String storageClass;

  /// Creates a new [BareMetalAdminClusterStorageLvpShareConfigLvpConfig].
  /// [path] The host machine path.
  /// [storageClass] The StorageClass name that PVs will be created with.
  BareMetalAdminClusterStorageLvpShareConfigLvpConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['storageClass'] = storageClass;
    return map;
  }

  factory BareMetalAdminClusterStorageLvpShareConfigLvpConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminClusterStorageLvpShareConfigLvpConfig(
      path: map['path'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}
