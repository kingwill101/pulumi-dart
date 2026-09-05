// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterCacheStorageConfiguration {
  /// Size of cache in Gigabytes.
  final pulumi.Input<int> size;
  /// Type of cache storage. Valid values are `CACHE_1000` (1000 MB/s disk access throughput), `CACHE_250` (250 MB/s disk access throughput), and `CACHE_12` (12 MB/s disk access throughput).
  final pulumi.Input<String> type;

  /// Creates a new [KxClusterCacheStorageConfiguration].
  /// [size] Size of cache in Gigabytes.
  /// [type] Type of cache storage. Valid values are `CACHE_1000` (1000 MB/s disk access throughput), `CACHE_250` (250 MB/s disk access throughput), and `CACHE_12` (12 MB/s disk access throughput).
  const KxClusterCacheStorageConfiguration({
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
      'type': type,
    };
  }

  factory KxClusterCacheStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterCacheStorageConfiguration(
      size: pulumi.Input.fromValue((map['size'] as num).toInt()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
