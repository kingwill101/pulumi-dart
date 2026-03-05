// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions.dart';
import 'scope.dart';
import 'suppression_config.dart';

/// Action rule with suppression configuration
class Suppression {
  /// conditions on which alerts will be filtered
  final pulumi.Input<Conditions>? conditions;
  /// Description of action rule
  final pulumi.Input<String>? description;
  /// scope on which action rule will apply
  final pulumi.Input<Scope>? scope;
  /// Indicates if the given action rule is enabled or disabled
  final pulumi.Input<String>? status;
  /// suppression configuration for the action rule
  final pulumi.Input<SuppressionConfig> suppressionConfig;
  /// Indicates type of action rule
  /// Expected value is 'Suppression'.
  final pulumi.Input<String> type;

  /// Creates a new [Suppression].
  /// [conditions] conditions on which alerts will be filtered
  /// [description] Description of action rule
  /// [scope] scope on which action rule will apply
  /// [status] Indicates if the given action rule is enabled or disabled
  /// [suppressionConfig] suppression configuration for the action rule
  /// [type] Indicates type of action rule
  Suppression({
    this.conditions,
    this.description,
    this.scope,
    this.status,
    required this.suppressionConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<Conditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'description': ?description,
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'status': ?status,
      'suppressionConfig': pulumi.Input.mapInputValue<SuppressionConfig, Map<String, dynamic>>(suppressionConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory Suppression.fromMap(Map<String, dynamic> map) {
    return Suppression(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Conditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Scope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      suppressionConfig: pulumi.Input.fromValue(SuppressionConfig.fromMap((map['suppressionConfig']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

