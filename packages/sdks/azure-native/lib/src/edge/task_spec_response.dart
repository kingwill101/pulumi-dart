// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Task Spec
class TaskSpecResponse {
  /// Name of Task
  final pulumi.Input<String> name;
  /// Task specification
  final pulumi.Input<dynamic> specification;
  /// Target ARM id
  final pulumi.Input<String?>? targetId;

  /// Creates a new [TaskSpecResponse].
  /// [name] Name of Task
  /// [specification] Task specification
  /// [targetId] Target ARM id
  const TaskSpecResponse({
    required this.name,
    required this.specification,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'specification': specification,
      'targetId': ?targetId,
    };
  }

  factory TaskSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskSpecResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      specification: pulumi.Input.fromValue(map['specification']),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
