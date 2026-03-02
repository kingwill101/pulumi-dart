// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Routine resources.
class RoutineState {
  /// The time when the routine was created.
  final pulumi.Input<String>? createTime;
  /// The routine name, which must be unique in the same account.
  final pulumi.Input<String>? description;
  /// Routine Name
  final pulumi.Input<String>? name;

  /// Creates a new [RoutineState].
  /// [createTime] The time when the routine was created.
  /// [description] The routine name, which must be unique in the same account.
  /// [name] Routine Name
  RoutineState({
    this.createTime,
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
    };
  }

  factory RoutineState.fromMap(Map<String, dynamic> map) {
    return RoutineState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

