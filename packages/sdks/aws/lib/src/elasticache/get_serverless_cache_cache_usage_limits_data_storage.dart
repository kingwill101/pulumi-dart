// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerlessCacheCacheUsageLimitsDataStorage {
  /// The maximum number of ECPUs the cache can consume per second.
  final pulumi.Input<int> maximum;
  /// The minimum number of ECPUs the cache can consume per second.
  final pulumi.Input<int> minimum;
  /// The unit that the storage is measured in.
  final pulumi.Input<String> unit;

  /// Creates a new [GetServerlessCacheCacheUsageLimitsDataStorage].
  /// [maximum] The maximum number of ECPUs the cache can consume per second.
  /// [minimum] The minimum number of ECPUs the cache can consume per second.
  /// [unit] The unit that the storage is measured in.
  GetServerlessCacheCacheUsageLimitsDataStorage({
    required this.maximum,
    required this.minimum,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': maximum,
      'minimum': minimum,
      'unit': unit,
    };
  }

  factory GetServerlessCacheCacheUsageLimitsDataStorage.fromMap(Map<String, dynamic> map) {
    return GetServerlessCacheCacheUsageLimitsDataStorage(
      maximum: pulumi.Input.fromValue(map['maximum'] as int),
      minimum: pulumi.Input.fromValue(map['minimum'] as int),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}

