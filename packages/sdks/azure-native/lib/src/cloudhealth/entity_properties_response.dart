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
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Signal groups which are assigned to this entity
  final pulumi.Input<SignalGroupResponse>? signals;

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
      'labels': ?labels,
      'provisioningState': provisioningState,
      'signals': ?pulumi.Input.mapOptionalInputValue<SignalGroupResponse, Map<String, dynamic>>(signals, (value) => value.toMap()),
    };
  }

  factory EntityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EntityPropertiesResponse(
      alerts: map['alerts'] == null ? null : (EntityAlertsResponse.fromMap((map['alerts'] as Map).cast<String, dynamic>())).input(),
      canvasPosition: map['canvasPosition'] == null ? null : (EntityCoordinatesResponse.fromMap((map['canvasPosition'] as Map).cast<String, dynamic>())).input(),
      deletionDate: (map['deletionDate'] as String).input(),
      discoveredBy: (map['discoveredBy'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      healthObjective: map['healthObjective'] == null ? null : (map['healthObjective'] as double).input(),
      healthState: (map['healthState'] as String).input(),
      icon: map['icon'] == null ? null : (IconDefinitionResponse.fromMap((map['icon'] as Map).cast<String, dynamic>())).input(),
      impact: map['impact'] == null ? null : (map['impact'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      signals: map['signals'] == null ? null : (SignalGroupResponse.fromMap((map['signals'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

