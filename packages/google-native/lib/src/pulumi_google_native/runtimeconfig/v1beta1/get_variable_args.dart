// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVariable.
class GetVariableArgs {
  final Input<String> configId;
  final Input<String>? project;
  final Input<String> variableId;

  GetVariableArgs({
    required this.configId,
    this.project,
    required this.variableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['variableId'] = variableId;
    return map;
  }

  factory GetVariableArgs.fromMap(Map<String, dynamic> map) {
    return GetVariableArgs(
      configId: Input.asInput<String>(map['configId']),
      project: Input.asOptionalInput<String>(map['project']),
      variableId: Input.asInput<String>(map['variableId']),
    );
  }
}
