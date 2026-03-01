// ignore_for_file: unused_element, unnecessary_cast

import 'entity_alerts.dart';
import 'entity_coordinates.dart';
import 'icon_definition.dart';
import 'signal_group.dart';

/// Properties which are common across all kinds of entities
class EntityProperties {
  /// Alert configuration for this entity
  final EntityAlerts? alerts;
  /// Positioning of the entity on the model canvas
  final EntityCoordinates? canvasPosition;
  /// Display name
  final String? displayName;
  /// Health objective as a percentage of time the entity should be healthy.
  final double? healthObjective;
  /// Visual icon definition. If not set, a default icon is used.
  final IconDefinition? icon;
  /// Impact of the entity in health state propagation
  final String? impact;
  /// Entity kind
  final String? kind;
  /// Optional set of labels (key-value pairs)
  final Map<String, String>? labels;
  /// Signal groups which are assigned to this entity
  final SignalGroup? signals;

  /// Creates a new [EntityProperties].
  /// [alerts] Alert configuration for this entity
  /// [canvasPosition] Positioning of the entity on the model canvas
  /// [displayName] Display name
  /// [healthObjective] Health objective as a percentage of time the entity should be healthy.
  /// [icon] Visual icon definition. If not set, a default icon is used.
  /// [impact] Impact of the entity in health state propagation
  /// [kind] Entity kind
  /// [labels] Optional set of labels (key-value pairs)
  /// [signals] Signal groups which are assigned to this entity
  EntityProperties({
    this.alerts,
    this.canvasPosition,
    this.displayName,
    this.healthObjective,
    this.icon,
    this.impact,
    this.kind,
    this.labels,
    this.signals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : alerts!.toMap(),
      'canvasPosition': ?canvasPosition == null ? null : canvasPosition!.toMap(),
      'displayName': ?displayName,
      'healthObjective': ?healthObjective,
      'icon': ?icon == null ? null : icon!.toMap(),
      'impact': ?impact,
      'kind': ?kind,
      'labels': ?labels,
      'signals': ?signals == null ? null : signals!.toMap(),
    };
  }

  factory EntityProperties.fromMap(Map<String, dynamic> map) {
    return EntityProperties(
      alerts: map['alerts'] == null ? null : EntityAlerts.fromMap((map['alerts'] as Map).cast<String, dynamic>()),
      canvasPosition: map['canvasPosition'] == null ? null : EntityCoordinates.fromMap((map['canvasPosition'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      healthObjective: map['healthObjective'] == null ? null : map['healthObjective'] as double,
      icon: map['icon'] == null ? null : IconDefinition.fromMap((map['icon'] as Map).cast<String, dynamic>()),
      impact: map['impact'] == null ? null : map['impact'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      signals: map['signals'] == null ? null : SignalGroup.fromMap((map['signals'] as Map).cast<String, dynamic>()),
    );
  }
}

