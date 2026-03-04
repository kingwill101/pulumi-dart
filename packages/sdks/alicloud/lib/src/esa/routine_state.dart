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
  RoutineState({this.createTime, this.description, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
    };
  }

  factory RoutineState.fromMap(Map<String, dynamic> map) {
    return RoutineState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
