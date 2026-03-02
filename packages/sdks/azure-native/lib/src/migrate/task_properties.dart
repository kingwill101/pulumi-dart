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
  TaskProperties({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      scope: (map['scope'] as String).input(),
      scopeId: (map['scopeId'] as String).input(),
      stage: map['stage'] == null ? null : (map['stage']! as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

