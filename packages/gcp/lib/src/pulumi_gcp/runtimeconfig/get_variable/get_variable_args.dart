// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVariable.
class GetVariableArgs {
  /// The name of the Runtime Configurator configuration.
  final Input<String> name;

  /// The name of the RuntimeConfig resource containing this variable.
  ///
  /// - - -
  final Input<String> parent;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetVariableArgs({
    required this.name,
    required this.parent,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['parent'] = parent;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableArgs(
      name: Input.asInput<String>(map['name']),
      parent: Input.asInput<String>(map['parent']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
