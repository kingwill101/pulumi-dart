// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessCacheCacheUsageLimitsDataStorage {
  /// The upper limit for data storage the cache is set to use. Must be between 1 and 5,000.
  final pulumi.Input<int>? maximum;

  /// The lower limit for data storage the cache is set to use. Must be between 1 and 5,000.
  final pulumi.Input<int>? minimum;

  /// The unit that the storage is measured in, in GB.
  final pulumi.Input<String> unit;

  /// Creates a new [ServerlessCacheCacheUsageLimitsDataStorage].
  /// [maximum] The upper limit for data storage the cache is set to use. Must be between 1 and 5,000.
  /// [minimum] The lower limit for data storage the cache is set to use. Must be between 1 and 5,000.
  /// [unit] The unit that the storage is measured in, in GB.
  ServerlessCacheCacheUsageLimitsDataStorage({
    this.maximum,
    this.minimum,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': ?maximum,
      'minimum': ?minimum,
      'unit': unit,
    };
  }

  factory ServerlessCacheCacheUsageLimitsDataStorage.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServerlessCacheCacheUsageLimitsDataStorage(
      maximum: (() {
        final guardedValue = map['maximum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minimum: (() {
        final guardedValue = map['minimum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
