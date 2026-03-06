// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_routine_routine_args_doc}
/// The set of arguments for Routine.
/// {@endtemplate}
/// {@macro pulumi_esa_routine_routine_args_doc}
class RoutineArgs {
  /// The routine name, which must be unique in the same account.
  final pulumi.Input<String>? description;
  /// Routine Name
  final pulumi.Input<String>? name;

  /// Creates a new [RoutineArgs].
  /// [description] The routine name, which must be unique in the same account.
  /// [name] Routine Name
  const RoutineArgs({
    this.description,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
    };
  }

  factory RoutineArgs.fromMap(Map<String, dynamic> map) {
    return RoutineArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

