// ignore_for_file: unused_element, unnecessary_cast


class GetClusterStorageConfigBlockStorage {
  /// Whether zonal shift is enabled.
  final bool enabled;

  /// Creates a new [GetClusterStorageConfigBlockStorage].
  /// [enabled] Whether zonal shift is enabled.
  GetClusterStorageConfigBlockStorage({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterStorageConfigBlockStorage.fromMap(Map<String, dynamic> map) {
    return GetClusterStorageConfigBlockStorage(
      enabled: map['enabled'] as bool,
    );
  }
}

