// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_configuration_response.dart';

/// Alert configuration for an entity
class EntityAlertsResponse {
  /// Alert to be triggered on state change to degraded
  final pulumi.Input<AlertConfigurationResponse?>? degraded;
  /// Alert to be triggered on state change to unhealthy
  final pulumi.Input<AlertConfigurationResponse?>? unhealthy;

  /// Creates a new [EntityAlertsResponse].
  /// [degraded] Alert to be triggered on state change to degraded
  /// [unhealthy] Alert to be triggered on state change to unhealthy
  const EntityAlertsResponse({
    this.degraded,
    this.unhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degraded': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationResponse, Map<String, dynamic>>(degraded, (value) => value.toMap()),
      'unhealthy': ?pulumi.Input.mapOptionalInputValue<AlertConfigurationResponse, Map<String, dynamic>>(unhealthy, (value) => value.toMap()),
    };
  }

  factory EntityAlertsResponse.fromMap(Map<String, dynamic> map) {
    return EntityAlertsResponse(
      degraded: (() { final guardedValue = map['degraded']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unhealthy: (() { final guardedValue = map['unhealthy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
