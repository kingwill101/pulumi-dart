// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The garbage collection properties of the connected registry.
class GarbageCollectionProperties {
  /// Indicates whether garbage collection is enabled for the connected registry.
  final pulumi.Input<bool>? enabled;
  /// The cron expression indicating the schedule that the connected registry will run garbage collection.
  final pulumi.Input<String>? schedule;

  /// Creates a new [GarbageCollectionProperties].
  /// [enabled] Indicates whether garbage collection is enabled for the connected registry.
  /// [schedule] The cron expression indicating the schedule that the connected registry will run garbage collection.
  GarbageCollectionProperties({
    this.enabled,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'schedule': ?schedule,
    };
  }

  factory GarbageCollectionProperties.fromMap(Map<String, dynamic> map) {
    return GarbageCollectionProperties(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      schedule: map['schedule'] == null ? null : (map['schedule'] as String).input(),
    );
  }
}

