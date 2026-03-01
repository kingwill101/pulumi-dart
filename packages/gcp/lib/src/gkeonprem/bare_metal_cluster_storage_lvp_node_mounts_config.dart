// ignore_for_file: unused_element, unnecessary_cast


class BareMetalClusterStorageLvpNodeMountsConfig {
  /// The host machine path.
  final String path;
  /// The StorageClass name that PVs will be created with.
  final String storageClass;

  /// Creates a new [BareMetalClusterStorageLvpNodeMountsConfig].
  /// [path] The host machine path.
  /// [storageClass] The StorageClass name that PVs will be created with.
  BareMetalClusterStorageLvpNodeMountsConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'storageClass': storageClass,
    };
  }

  factory BareMetalClusterStorageLvpNodeMountsConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterStorageLvpNodeMountsConfig(
      path: map['path'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}

