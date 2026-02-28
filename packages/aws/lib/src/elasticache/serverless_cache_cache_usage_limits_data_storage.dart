// ignore_for_file: unused_element, unnecessary_cast


class ServerlessCacheCacheUsageLimitsDataStorage {
  /// The upper limit for data storage the cache is set to use. Must be between 1 and 5,000.
  final int? maximum;
  /// The lower limit for data storage the cache is set to use. Must be between 1 and 5,000.
  final int? minimum;
  /// The unit that the storage is measured in, in GB.
  final String unit;

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

  factory ServerlessCacheCacheUsageLimitsDataStorage.fromMap(Map<String, dynamic> map) {
    return ServerlessCacheCacheUsageLimitsDataStorage(
      maximum: map['maximum'] == null ? null : map['maximum'] as int,
      minimum: map['minimum'] == null ? null : map['minimum'] as int,
      unit: map['unit'] as String,
    );
  }
}

