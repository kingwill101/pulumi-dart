// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditions.dart';
import 'scope.dart';

/// Action rule with diagnostics configuration
class Diagnostics {
  /// conditions on which alerts will be filtered
  final pulumi.Input<Conditions?>? conditions;
  /// Description of action rule
  final pulumi.Input<String?>? description;
  /// scope on which action rule will apply
  final pulumi.Input<Scope?>? scope;
  /// Indicates if the given action rule is enabled or disabled
  final pulumi.Input<dynamic>? status;
  /// Indicates type of action rule
  /// Expected value is 'Diagnostics'.
  final pulumi.Input<String> type;

  /// Creates a new [Diagnostics].
  /// [conditions] conditions on which alerts will be filtered
  /// [description] Description of action rule
  /// [scope] scope on which action rule will apply
  /// [status] Indicates if the given action rule is enabled or disabled
  /// [type] Indicates type of action rule
  const Diagnostics({
    this.conditions,
    this.description,
    this.scope,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<Conditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'description': ?description,
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'status': ?status,
      'type': type,
    };
  }

  factory Diagnostics.fromMap(Map<String, dynamic> map) {
    return Diagnostics(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Conditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Scope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
