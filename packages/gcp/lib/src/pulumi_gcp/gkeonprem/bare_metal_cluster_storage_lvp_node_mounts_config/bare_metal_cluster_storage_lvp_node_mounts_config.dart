// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterStorageLvpNodeMountsConfig {
  /// The host machine path.
  final String path;

  /// The StorageClass name that PVs will be created with.
  final String storageClass;

  BareMetalClusterStorageLvpNodeMountsConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['storageClass'] = storageClass;
    return map;
  }

  factory BareMetalClusterStorageLvpNodeMountsConfig.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterStorageLvpNodeMountsConfig(
      path: map['path'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}
