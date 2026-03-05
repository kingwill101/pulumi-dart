// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_configuration.dart';

/// Alert configuration for an entity
class EntityAlerts {
  /// Alert to be triggered on state change to degraded
  final pulumi.Input<AlertConfiguration>? degraded;
  /// Alert to be triggered on state change to unhealthy
  final pulumi.Input<AlertConfiguration>? unhealthy;

  /// Creates a new [EntityAlerts].
  /// [degraded] Alert to be triggered on state change to degraded
  /// [unhealthy] Alert to be triggered on state change to unhealthy
  EntityAlerts({
    this.degraded,
    this.unhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degraded': ?pulumi.Input.mapOptionalInputValue<AlertConfiguration, Map<String, dynamic>>(degraded, (value) => value.toMap()),
      'unhealthy': ?pulumi.Input.mapOptionalInputValue<AlertConfiguration, Map<String, dynamic>>(unhealthy, (value) => value.toMap()),
    };
  }

  factory EntityAlerts.fromMap(Map<String, dynamic> map) {
    return EntityAlerts(
      degraded: (() { final guardedValue = map['degraded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unhealthy: (() { final guardedValue = map['unhealthy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

