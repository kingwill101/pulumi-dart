// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_alerts.dart';
import 'entity_coordinates.dart';
import 'icon_definition.dart';
import 'signal_group.dart';

/// Properties which are common across all kinds of entities
class EntityProperties {
  /// Alert configuration for this entity
  final pulumi.Input<EntityAlerts?>? alerts;
  /// Positioning of the entity on the model canvas
  final pulumi.Input<EntityCoordinates?>? canvasPosition;
  /// Display name
  final pulumi.Input<String?>? displayName;
  /// Health objective as a percentage of time the entity should be healthy.
  final pulumi.Input<double?>? healthObjective;
  /// Visual icon definition. If not set, a default icon is used.
  final pulumi.Input<IconDefinition?>? icon;
  /// Impact of the entity in health state propagation
  final pulumi.Input<dynamic>? impact;
  /// Entity kind
  final pulumi.Input<String?>? kind;
  /// Signal groups which are assigned to this entity
  final pulumi.Input<SignalGroup?>? signals;
  /// Optional set of labels (key-value pairs)
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EntityProperties].
  /// [alerts] Alert configuration for this entity
  /// [canvasPosition] Positioning of the entity on the model canvas
  /// [displayName] Display name
  /// [healthObjective] Health objective as a percentage of time the entity should be healthy.
  /// [icon] Visual icon definition. If not set, a default icon is used.
  /// [impact] Impact of the entity in health state propagation
  /// [kind] Entity kind
  /// [signals] Signal groups which are assigned to this entity
  /// [tags] Optional set of labels (key-value pairs)
  EntityProperties({
    this.alerts,
    this.canvasPosition,
    this.displayName,
    this.healthObjective,
    this.icon,
    pulumi.Input<dynamic>? impact,
    pulumi.Input<String?>? kind,
    this.signals,
    this.tags,
  }) : impact = impact ?? pulumi.Input.fromValue('Standard'), kind = kind ?? pulumi.Input.fromValue('Default');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<EntityAlerts, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'canvasPosition': ?pulumi.Input.mapOptionalInputValue<EntityCoordinates, Map<String, dynamic>>(canvasPosition, (value) => value.toMap()),
      'displayName': ?displayName,
      'healthObjective': ?healthObjective,
      'icon': ?pulumi.Input.mapOptionalInputValue<IconDefinition, Map<String, dynamic>>(icon, (value) => value.toMap()),
      'impact': ?impact,
      'kind': ?kind,
      'signals': ?pulumi.Input.mapOptionalInputValue<SignalGroup, Map<String, dynamic>>(signals, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory EntityProperties.fromMap(Map<String, dynamic> map) {
    return EntityProperties(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityAlerts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      canvasPosition: (() { final guardedValue = map['canvasPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityCoordinates.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthObjective: (() { final guardedValue = map['healthObjective']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IconDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      impact: (() { final guardedValue = map['impact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signals: (() { final guardedValue = map['signals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SignalGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
