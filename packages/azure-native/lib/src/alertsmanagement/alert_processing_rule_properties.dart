// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_action_groups.dart';
import 'condition.dart';
import 'schedule.dart';

/// Alert processing rule properties defining scopes, conditions and scheduling logic for alert processing rule.
class AlertProcessingRuleProperties {
  /// Actions to be applied.
  final List<AddActionGroups> actions;
  /// Conditions on which alerts will be filtered.
  final List<Condition>? conditions;
  /// Description of alert processing rule.
  final String? description;
  /// Indicates if the given alert processing rule is enabled or disabled.
  final bool? enabled;
  /// Scheduling for alert processing rule.
  final Schedule? schedule;
  /// Scopes on which alert processing rule will apply.
  final List<String> scopes;

  /// Creates a new [AlertProcessingRuleProperties].
  /// [actions] Actions to be applied.
  /// [conditions] Conditions on which alerts will be filtered.
  /// [description] Description of alert processing rule.
  /// [enabled] Indicates if the given alert processing rule is enabled or disabled.
  /// [schedule] Scheduling for alert processing rule.
  /// [scopes] Scopes on which alert processing rule will apply.
  AlertProcessingRuleProperties({
    required this.actions,
    this.conditions,
    this.description,
    this.enabled,
    this.schedule,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<AddActionGroups, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<Condition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'scopes': scopes,
    };
  }

  factory AlertProcessingRuleProperties.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleProperties(
      actions: pulumi.Input.decodeList<AddActionGroups>(map['actions'], (value) => AddActionGroups.fromMap((value as Map).cast<String, dynamic>())),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<Condition>(map['conditions'], (value) => Condition.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      schedule: map['schedule'] == null ? null : Schedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}

