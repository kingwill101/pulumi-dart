// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties to configure retention settings for the  eventhub
class RetentionDescriptionResponse {
  /// Enumerates the possible values for cleanup policy
  final pulumi.Input<String?>? cleanupPolicy;
  /// Number of hours to retain the events for this Event Hub. This value is only used when cleanupPolicy is Delete. If cleanupPolicy is Compact the returned value of this property is Long.MaxValue
  final pulumi.Input<double?>? retentionTimeInHours;
  /// Number of hours to retain the tombstone markers of a compacted Event Hub. This value is only used when cleanupPolicy is Compact. Consumer must complete reading the tombstone marker within this specified amount of time if consumer begins from starting offset to ensure they get a valid snapshot for the specific key described by the tombstone marker within the compacted Event Hub
  final pulumi.Input<int?>? tombstoneRetentionTimeInHours;

  /// Creates a new [RetentionDescriptionResponse].
  /// [cleanupPolicy] Enumerates the possible values for cleanup policy
  /// [retentionTimeInHours] Number of hours to retain the events for this Event Hub. This value is only used when cleanupPolicy is Delete. If cleanupPolicy is Compact the returned value of this property is Long.MaxValue
  /// [tombstoneRetentionTimeInHours] Number of hours to retain the tombstone markers of a compacted Event Hub. This value is only used when cleanupPolicy is Compact. Consumer must complete reading the tombstone marker within this specified amount of time if consumer begins from starting offset to ensure they get a valid snapshot for the specific key described by the tombstone marker within the compacted Event Hub
  const RetentionDescriptionResponse({
    this.cleanupPolicy,
    this.retentionTimeInHours,
    this.tombstoneRetentionTimeInHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicy': ?cleanupPolicy,
      'retentionTimeInHours': ?retentionTimeInHours,
      'tombstoneRetentionTimeInHours': ?tombstoneRetentionTimeInHours,
    };
  }

  factory RetentionDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return RetentionDescriptionResponse(
      cleanupPolicy: (() { final guardedValue = map['cleanupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionTimeInHours: (() { final guardedValue = map['retentionTimeInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      tombstoneRetentionTimeInHours: (() { final guardedValue = map['tombstoneRetentionTimeInHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
