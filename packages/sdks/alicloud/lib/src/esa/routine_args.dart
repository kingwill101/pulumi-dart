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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
    };
  }

  factory RoutineArgs.fromMap(Map<String, dynamic> map) {
    return RoutineArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

