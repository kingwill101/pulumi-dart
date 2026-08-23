// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Task Properties class.
class TaskProperties {
  /// Task Description
  final pulumi.Input<String>? description;
  /// Task Dislay Name
  final pulumi.Input<String> displayName;
  /// Task Scope
  final pulumi.Input<String> scope;
  /// associated Wave Id
  final pulumi.Input<String> scopeId;
  /// Task Stage
  final pulumi.Input<String>? stage;
  /// Task Status
  final pulumi.Input<String> status;

  /// Creates a new [TaskProperties].
  /// [description] Task Description
  /// [displayName] Task Dislay Name
  /// [scope] Task Scope
  /// [scopeId] associated Wave Id
  /// [stage] Task Stage
  /// [status] Task Status
  const TaskProperties({
    this.description,
    required this.displayName,
    required this.scope,
    required this.scopeId,
    this.stage,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'scope': scope,
      'scopeId': scopeId,
      'stage': ?stage,
      'status': status,
    };
  }

  factory TaskProperties.fromMap(Map<String, dynamic> map) {
    return TaskProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
