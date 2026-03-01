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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
    };
  }

  factory RoutineState.fromMap(Map<String, dynamic> map) {
    return RoutineState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

