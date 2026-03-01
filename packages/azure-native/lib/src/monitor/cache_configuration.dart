// ignore_for_file: unused_element, unnecessary_cast


/// Cache configurations.
class CacheConfiguration {
  /// Max storage usage in megabytes.
  final int? maxStorageUsage;
  /// Retention period in minutes.
  final int? retentionPeriod;

  /// Creates a new [CacheConfiguration].
  /// [maxStorageUsage] Max storage usage in megabytes.
  /// [retentionPeriod] Retention period in minutes.
  CacheConfiguration({
    this.maxStorageUsage,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxStorageUsage': ?maxStorageUsage,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory CacheConfiguration.fromMap(Map<String, dynamic> map) {
    return CacheConfiguration(
      maxStorageUsage: map['maxStorageUsage'] == null ? null : map['maxStorageUsage'] as int,
      retentionPeriod: map['retentionPeriod'] == null ? null : map['retentionPeriod'] as int,
    );
  }
}

