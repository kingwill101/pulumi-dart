// ignore_for_file: unused_element, unnecessary_cast


/// The garbage collection properties of the connected registry.
class GarbageCollectionPropertiesResponse {
  /// Indicates whether garbage collection is enabled for the connected registry.
  final bool? enabled;
  /// The cron expression indicating the schedule that the connected registry will run garbage collection.
  final String? schedule;

  /// Creates a new [GarbageCollectionPropertiesResponse].
  /// [enabled] Indicates whether garbage collection is enabled for the connected registry.
  /// [schedule] The cron expression indicating the schedule that the connected registry will run garbage collection.
  GarbageCollectionPropertiesResponse({
    this.enabled,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'schedule': ?schedule,
    };
  }

  factory GarbageCollectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GarbageCollectionPropertiesResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
    );
  }
}

