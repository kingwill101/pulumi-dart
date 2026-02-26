// ignore_for_file: unused_element, unnecessary_cast

class GetClusterStorageConfigBlockStorage {
  /// Whether zonal shift is enabled.
  final bool enabled;

  GetClusterStorageConfigBlockStorage({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterStorageConfigBlockStorage.fromMap(
      Map<String, dynamic> map) {
    return GetClusterStorageConfigBlockStorage(
      enabled: map['enabled'] as bool,
    );
  }
}
