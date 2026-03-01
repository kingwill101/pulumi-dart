// ignore_for_file: unused_element, unnecessary_cast

import 'entity_alerts_response.dart';
import 'entity_coordinates_response.dart';
import 'icon_definition_response.dart';
import 'signal_group_response.dart';

/// Properties which are common across all kinds of entities
class EntityPropertiesResponse {
  /// Alert configuration for this entity
  final EntityAlertsResponse? alerts;
  /// Positioning of the entity on the model canvas
  final EntityCoordinatesResponse? canvasPosition;
  /// Date when the entity was (soft-)deleted
  final String deletionDate;
  /// Discovered by which discovery rule. If set, the entity cannot be deleted manually.
  final String discoveredBy;
  /// Display name
  final String? displayName;
  /// Health objective as a percentage of time the entity should be healthy.
  final double? healthObjective;
  /// Health state of this entity
  final String healthState;
  /// Visual icon definition. If not set, a default icon is used.
  final IconDefinitionResponse? icon;
  /// Impact of the entity in health state propagation
  final String? impact;
  /// Entity kind
  final String? kind;
  /// Optional set of labels (key-value pairs)
  final Map<String, String>? labels;
  /// The status of the last operation.
  final String provisioningState;
  /// Signal groups which are assigned to this entity
  final SignalGroupResponse? signals;

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
  /// [labels] Optional set of labels (key-value pairs)
  /// [provisioningState] The status of the last operation.
  /// [signals] Signal groups which are assigned to this entity
  EntityPropertiesResponse({
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
    this.labels,
    required this.provisioningState,
    this.signals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : alerts!.toMap(),
      'canvasPosition': ?canvasPosition == null ? null : canvasPosition!.toMap(),
      'deletionDate': deletionDate,
      'discoveredBy': discoveredBy,
      'displayName': ?displayName,
      'healthObjective': ?healthObjective,
      'healthState': healthState,
      'icon': ?icon == null ? null : icon!.toMap(),
      'impact': ?impact,
      'kind': ?kind,
      'labels': ?labels,
      'provisioningState': provisioningState,
      'signals': ?signals == null ? null : signals!.toMap(),
    };
  }

  factory EntityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EntityPropertiesResponse(
      alerts: map['alerts'] == null ? null : EntityAlertsResponse.fromMap((map['alerts'] as Map).cast<String, dynamic>()),
      canvasPosition: map['canvasPosition'] == null ? null : EntityCoordinatesResponse.fromMap((map['canvasPosition'] as Map).cast<String, dynamic>()),
      deletionDate: map['deletionDate'] as String,
      discoveredBy: map['discoveredBy'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      healthObjective: map['healthObjective'] == null ? null : map['healthObjective'] as double,
      healthState: map['healthState'] as String,
      icon: map['icon'] == null ? null : IconDefinitionResponse.fromMap((map['icon'] as Map).cast<String, dynamic>()),
      impact: map['impact'] == null ? null : map['impact'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      signals: map['signals'] == null ? null : SignalGroupResponse.fromMap((map['signals'] as Map).cast<String, dynamic>()),
    );
  }
}

