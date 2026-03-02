// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_alerts.dart';
import 'entity_coordinates.dart';
import 'icon_definition.dart';
import 'signal_group.dart';

/// Properties which are common across all kinds of entities
class EntityProperties {
  /// Alert configuration for this entity
  final pulumi.Input<EntityAlerts>? alerts;
  /// Positioning of the entity on the model canvas
  final pulumi.Input<EntityCoordinates>? canvasPosition;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Health objective as a percentage of time the entity should be healthy.
  final pulumi.Input<double>? healthObjective;
  /// Visual icon definition. If not set, a default icon is used.
  final pulumi.Input<IconDefinition>? icon;
  /// Impact of the entity in health state propagation
  final pulumi.Input<String>? impact;
  /// Entity kind
  final pulumi.Input<String>? kind;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>>? labels;
  /// Signal groups which are assigned to this entity
  final pulumi.Input<SignalGroup>? signals;

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
      'alerts': ?pulumi.Input.mapOptionalInputValue<EntityAlerts, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'canvasPosition': ?pulumi.Input.mapOptionalInputValue<EntityCoordinates, Map<String, dynamic>>(canvasPosition, (value) => value.toMap()),
      'displayName': ?displayName,
      'healthObjective': ?healthObjective,
      'icon': ?pulumi.Input.mapOptionalInputValue<IconDefinition, Map<String, dynamic>>(icon, (value) => value.toMap()),
      'impact': ?impact,
      'kind': ?kind,
      'labels': ?labels,
      'signals': ?pulumi.Input.mapOptionalInputValue<SignalGroup, Map<String, dynamic>>(signals, (value) => value.toMap()),
    };
  }

  factory EntityProperties.fromMap(Map<String, dynamic> map) {
    return EntityProperties(
      alerts: map['alerts'] == null ? null : (EntityAlerts.fromMap((map['alerts']! as Map).cast<String, dynamic>())).input(),
      canvasPosition: map['canvasPosition'] == null ? null : (EntityCoordinates.fromMap((map['canvasPosition']! as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      healthObjective: map['healthObjective'] == null ? null : (map['healthObjective']! as double).input(),
      icon: map['icon'] == null ? null : (IconDefinition.fromMap((map['icon']! as Map).cast<String, dynamic>())).input(),
      impact: map['impact'] == null ? null : (map['impact']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      signals: map['signals'] == null ? null : (SignalGroup.fromMap((map['signals']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

