// ignore_for_file: unused_element, unnecessary_cast

class GetServerlessCacheCacheUsageLimitsDataStorage {
  /// The maximum number of ECPUs the cache can consume per second.
  final int maximum;

  /// The minimum number of ECPUs the cache can consume per second.
  final int minimum;

  /// The unit that the storage is measured in.
  final String unit;

  GetServerlessCacheCacheUsageLimitsDataStorage({
    required this.maximum,
    required this.minimum,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    map['unit'] = unit;
    return map;
  }

  factory GetServerlessCacheCacheUsageLimitsDataStorage.fromMap(
      Map<String, dynamic> map) {
    return GetServerlessCacheCacheUsageLimitsDataStorage(
      maximum: map['maximum'] as int,
      minimum: map['minimum'] as int,
      unit: map['unit'] as String,
    );
  }
}
