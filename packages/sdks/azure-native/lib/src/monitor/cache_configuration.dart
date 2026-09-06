// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cache configurations.
class CacheConfiguration {
  /// Max storage usage in megabytes.
  final pulumi.Input<int?>? maxStorageUsage;
  /// Retention period in minutes.
  final pulumi.Input<int?>? retentionPeriod;

  /// Creates a new [CacheConfiguration].
  /// [maxStorageUsage] Max storage usage in megabytes.
  /// [retentionPeriod] Retention period in minutes.
  const CacheConfiguration({
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
      maxStorageUsage: (() { final guardedValue = map['maxStorageUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
