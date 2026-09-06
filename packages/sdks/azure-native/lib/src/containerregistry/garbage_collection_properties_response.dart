// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The garbage collection properties of the connected registry.
class GarbageCollectionPropertiesResponse {
  /// Indicates whether garbage collection is enabled for the connected registry.
  final pulumi.Input<bool?>? enabled;
  /// The cron expression indicating the schedule that the connected registry will run garbage collection.
  final pulumi.Input<String?>? schedule;

  /// Creates a new [GarbageCollectionPropertiesResponse].
  /// [enabled] Indicates whether garbage collection is enabled for the connected registry.
  /// [schedule] The cron expression indicating the schedule that the connected registry will run garbage collection.
  const GarbageCollectionPropertiesResponse({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
