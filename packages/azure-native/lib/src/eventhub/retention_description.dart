// ignore_for_file: unused_element, unnecessary_cast


/// Properties to configure retention settings for the  eventhub
class RetentionDescription {
  /// Enumerates the possible values for cleanup policy
  final String? cleanupPolicy;
  /// Number of hours to retain the events for this Event Hub. This value is only used when cleanupPolicy is Delete. If cleanupPolicy is Compact the returned value of this property is Long.MaxValue
  final double? retentionTimeInHours;
  /// Number of hours to retain the tombstone markers of a compacted Event Hub. This value is only used when cleanupPolicy is Compact. Consumer must complete reading the tombstone marker within this specified amount of time if consumer begins from starting offset to ensure they get a valid snapshot for the specific key described by the tombstone marker within the compacted Event Hub
  final int? tombstoneRetentionTimeInHours;

  /// Creates a new [RetentionDescription].
  /// [cleanupPolicy] Enumerates the possible values for cleanup policy
  /// [retentionTimeInHours] Number of hours to retain the events for this Event Hub. This value is only used when cleanupPolicy is Delete. If cleanupPolicy is Compact the returned value of this property is Long.MaxValue
  /// [tombstoneRetentionTimeInHours] Number of hours to retain the tombstone markers of a compacted Event Hub. This value is only used when cleanupPolicy is Compact. Consumer must complete reading the tombstone marker within this specified amount of time if consumer begins from starting offset to ensure they get a valid snapshot for the specific key described by the tombstone marker within the compacted Event Hub
  RetentionDescription({
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

  factory RetentionDescription.fromMap(Map<String, dynamic> map) {
    return RetentionDescription(
      cleanupPolicy: map['cleanupPolicy'] == null ? null : map['cleanupPolicy'] as String,
      retentionTimeInHours: map['retentionTimeInHours'] == null ? null : map['retentionTimeInHours'] as double,
      tombstoneRetentionTimeInHours: map['tombstoneRetentionTimeInHours'] == null ? null : map['tombstoneRetentionTimeInHours'] as int,
    );
  }
}

