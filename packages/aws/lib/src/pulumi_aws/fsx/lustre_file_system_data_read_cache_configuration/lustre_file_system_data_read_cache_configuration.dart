// ignore_for_file: unused_element, unnecessary_cast

class LustreFileSystemDataReadCacheConfiguration {
  /// Size of the file system's SSD read cache, in gibibytes (GiB). Required when the `sizing_mode` is `USER_PROVISIONED`.
  final int? size;

  /// Sizing mode for the cache. Valud values are `NO_CACHE`, `USER_PROVISIONED`, and `PROPORTIONAL_TO_THROUGHPUT_CAPACITY`.
  final String sizingMode;

  LustreFileSystemDataReadCacheConfiguration({
    this.size,
    required this.sizingMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    map['sizingMode'] = sizingMode;
    return map;
  }

  factory LustreFileSystemDataReadCacheConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LustreFileSystemDataReadCacheConfiguration(
      size: map['size'] == null ? null : map['size'] as int,
      sizingMode: map['sizingMode'] as String,
    );
  }
}
