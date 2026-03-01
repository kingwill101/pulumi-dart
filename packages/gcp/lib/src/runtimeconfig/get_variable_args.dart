// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_get_variable_get_variable_args_doc}
/// Arguments for getVariable.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_get_variable_get_variable_args_doc}
class GetVariableArgs {
  /// The name of the Runtime Configurator configuration.
  final pulumi.Input<String> name;

  /// The name of the RuntimeConfig resource containing this variable.
  ///
  /// - - -
  final pulumi.Input<String> parent;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetVariableArgs].
  /// [name] The name of the Runtime Configurator configuration.
  /// [parent] The name of the RuntimeConfig resource containing this variable.
  /// [project] The project in which the resource belongs. If it
  GetVariableArgs({
    required String name,
    required String parent,
    String? project,
  }) : name = pulumi.Input.asInput<String>(name),
       parent = pulumi.Input.asInput<String>(parent),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parent': parent,
      'project': ?project,
    };
  }

  factory GetVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableArgs(
      name: map['name'] as String,
      parent: map['parent'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
