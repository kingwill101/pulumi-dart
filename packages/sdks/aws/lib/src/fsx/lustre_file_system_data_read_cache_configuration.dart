// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LustreFileSystemDataReadCacheConfiguration {
  /// Size of the file system's SSD read cache, in gibibytes (GiB). Required when the `sizing_mode` is `USER_PROVISIONED`.
  final pulumi.Input<int>? size;
  /// Sizing mode for the cache. Valud values are `NO_CACHE`, `USER_PROVISIONED`, and `PROPORTIONAL_TO_THROUGHPUT_CAPACITY`.
  final pulumi.Input<String> sizingMode;

  /// Creates a new [LustreFileSystemDataReadCacheConfiguration].
  /// [size] Size of the file system's SSD read cache, in gibibytes (GiB). Required when the `sizing_mode` is `USER_PROVISIONED`.
  /// [sizingMode] Sizing mode for the cache. Valud values are `NO_CACHE`, `USER_PROVISIONED`, and `PROPORTIONAL_TO_THROUGHPUT_CAPACITY`.
  LustreFileSystemDataReadCacheConfiguration({
    this.size,
    required this.sizingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': ?size,
      'sizingMode': sizingMode,
    };
  }

  factory LustreFileSystemDataReadCacheConfiguration.fromMap(Map<String, dynamic> map) {
    return LustreFileSystemDataReadCacheConfiguration(
      size: map['size'] == null ? null : ((map['size'] as int).input()).input(),
      sizingMode: (map['sizingMode'] as String).input(),
    );
  }
}

