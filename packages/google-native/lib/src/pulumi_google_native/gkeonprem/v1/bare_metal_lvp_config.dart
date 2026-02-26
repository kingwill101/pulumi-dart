// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the configs for local persistent volumes (PVs).
class BareMetalLvpConfig {
  /// The host machine path.
  final String path;

  /// The StorageClass name that PVs will be created with.
  final String storageClass;

  BareMetalLvpConfig({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['storageClass'] = storageClass;
    return map;
  }

  factory BareMetalLvpConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalLvpConfig(
      path: map['path'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}
