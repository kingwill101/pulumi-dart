// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cache configurations.
class CacheConfigurationResponse {
  /// Max storage usage in megabytes.
  final pulumi.Input<int>? maxStorageUsage;
  /// Retention period in minutes.
  final pulumi.Input<int>? retentionPeriod;

  /// Creates a new [CacheConfigurationResponse].
  /// [maxStorageUsage] Max storage usage in megabytes.
  /// [retentionPeriod] Retention period in minutes.
  CacheConfigurationResponse({
    this.maxStorageUsage,
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxStorageUsage': ?maxStorageUsage,
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory CacheConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CacheConfigurationResponse(
      maxStorageUsage: map['maxStorageUsage'] == null ? null : (map['maxStorageUsage'] as int).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as int).input(),
    );
  }
}

