// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_alerts_response.dart';
import 'entity_coordinates_response.dart';
import 'icon_definition_response.dart';
import 'signal_group_response.dart';

/// Properties which are common across all kinds of entities
class EntityPropertiesResponse {
  /// Alert configuration for this entity
  final pulumi.Input<EntityAlertsResponse>? alerts;
  /// Positioning of the entity on the model canvas
  final pulumi.Input<EntityCoordinatesResponse>? canvasPosition;
  /// Date when the entity was (soft-)deleted
  final pulumi.Input<String> deletionDate;
  /// Discovered by which discovery rule. If set, the entity cannot be deleted manually.
  final pulumi.Input<String> discoveredBy;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Health objective as a percentage of time the entity should be healthy.
  final pulumi.Input<double>? healthObjective;
  /// Health state of this entity
  final pulumi.Input<String> healthState;
  /// Visual icon definition. If not set, a default icon is used.
  final pulumi.Input<IconDefinitionResponse>? icon;
  /// Impact of the entity in health state propagation
  final pulumi.Input<String>? impact;
  /// Entity kind
  final pulumi.Input<String>? kind;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Signal groups which are assigned to this entity
  final pulumi.Input<SignalGroupResponse>? signals;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EntityPropertiesResponse].
  /// [alerts] Alert configuration for this entity
  /// [canvasPosition] Positioning of the entity on the model canvas
  /// [deletionDate] Date when the entity was (soft-)deleted
  /// [discoveredBy] Discovered by which discovery rule. If set, the entity cannot be deleted manually.
  /// [displayName] Display name
  /// [healthObjective] Health objective as a percentage of time the entity should be healthy.
  /// [healthState] Health state of this entity
  /// [icon] Visual icon definition. If not set, a default icon is used.
  /// [impact] Impact of the entity in health state propagation
  /// [kind] Entity kind
  /// [provisioningState] The status of the last operation.
  /// [signals] Signal groups which are assigned to this entity
  /// [tags] Optional set of labels (key-value pairs)
  const EntityPropertiesResponse({
    this.alerts,
    this.canvasPosition,
    required this.deletionDate,
    required this.discoveredBy,
    this.displayName,
    this.healthObjective,
    required this.healthState,
    this.icon,
    this.impact,
    this.kind,
    required this.provisioningState,
    this.signals,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<EntityAlertsResponse, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'canvasPosition': ?pulumi.Input.mapOptionalInputValue<EntityCoordinatesResponse, Map<String, dynamic>>(canvasPosition, (value) => value.toMap()),
      'deletionDate': deletionDate,
      'discoveredBy': discoveredBy,
      'displayName': ?displayName,
      'healthObjective': ?healthObjective,
      'healthState': healthState,
      'icon': ?pulumi.Input.mapOptionalInputValue<IconDefinitionResponse, Map<String, dynamic>>(icon, (value) => value.toMap()),
      'impact': ?impact,
      'kind': ?kind,
      'provisioningState': provisioningState,
      'signals': ?pulumi.Input.mapOptionalInputValue<SignalGroupResponse, Map<String, dynamic>>(signals, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory EntityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EntityPropertiesResponse(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityAlertsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canvasPosition: (() { final guardedValue = map['canvasPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityCoordinatesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionDate: pulumi.Input.fromValue(map['deletionDate'] as String),
      discoveredBy: pulumi.Input.fromValue(map['discoveredBy'] as String),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthObjective: (() { final guardedValue = map['healthObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      healthState: pulumi.Input.fromValue(map['healthState'] as String),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IconDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      impact: (() { final guardedValue = map['impact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      signals: (() { final guardedValue = map['signals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
