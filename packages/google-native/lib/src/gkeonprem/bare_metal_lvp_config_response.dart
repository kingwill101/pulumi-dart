// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the configs for local persistent volumes (PVs).
class BareMetalLvpConfigResponse {
  /// The host machine path.
  final String path;
  /// The StorageClass name that PVs will be created with.
  final String storageClass;

  /// Creates a new [BareMetalLvpConfigResponse].
  /// [path] The host machine path.
  /// [storageClass] The StorageClass name that PVs will be created with.
  BareMetalLvpConfigResponse({
    required this.path,
    required this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'storageClass': storageClass,
    };
  }

  factory BareMetalLvpConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalLvpConfigResponse(
      path: map['path'] as String,
      storageClass: map['storageClass'] as String,
    );
  }
}

