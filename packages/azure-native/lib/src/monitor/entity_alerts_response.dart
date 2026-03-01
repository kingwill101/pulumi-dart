// ignore_for_file: unused_element, unnecessary_cast

import 'alert_configuration_response.dart';

/// Alert configuration for an entity
class EntityAlertsResponse {
  /// Alert to be triggered on state change to degraded
  final AlertConfigurationResponse? degraded;
  /// Alert to be triggered on state change to unhealthy
  final AlertConfigurationResponse? unhealthy;

  /// Creates a new [EntityAlertsResponse].
  /// [degraded] Alert to be triggered on state change to degraded
  /// [unhealthy] Alert to be triggered on state change to unhealthy
  EntityAlertsResponse({
    this.degraded,
    this.unhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'degraded': ?degraded == null ? null : degraded!.toMap(),
      'unhealthy': ?unhealthy == null ? null : unhealthy!.toMap(),
    };
  }

  factory EntityAlertsResponse.fromMap(Map<String, dynamic> map) {
    return EntityAlertsResponse(
      degraded: map['degraded'] == null ? null : AlertConfigurationResponse.fromMap((map['degraded'] as Map).cast<String, dynamic>()),
      unhealthy: map['unhealthy'] == null ? null : AlertConfigurationResponse.fromMap((map['unhealthy'] as Map).cast<String, dynamic>()),
    );
  }
}

