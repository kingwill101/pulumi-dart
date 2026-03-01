// ignore_for_file: unused_element, unnecessary_cast

import 'alert_configuration.dart';

/// Alert configuration for an entity
class EntityAlerts {
  /// Alert to be triggered on state change to degraded
  final AlertConfiguration? degraded;
  /// Alert to be triggered on state change to unhealthy
  final AlertConfiguration? unhealthy;

  /// Creates a new [EntityAlerts].
  /// [degraded] Alert to be triggered on state change to degraded
  /// [unhealthy] Alert to be triggered on state change to unhealthy
  EntityAlerts({
    this.degraded,
    this.unhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degraded': ?degraded == null ? null : degraded!.toMap(),
      'unhealthy': ?unhealthy == null ? null : unhealthy!.toMap(),
    };
  }

  factory EntityAlerts.fromMap(Map<String, dynamic> map) {
    return EntityAlerts(
      degraded: map['degraded'] == null ? null : AlertConfiguration.fromMap((map['degraded'] as Map).cast<String, dynamic>()),
      unhealthy: map['unhealthy'] == null ? null : AlertConfiguration.fromMap((map['unhealthy'] as Map).cast<String, dynamic>()),
    );
  }
}

