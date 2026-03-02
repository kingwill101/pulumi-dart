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
  RoutineArgs({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

