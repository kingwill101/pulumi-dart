// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVariable.
class GetVariableArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> variableId;

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
      configId: pulumi.Input.asInput<String>(map['configId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      variableId: pulumi.Input.asInput<String>(map['variableId']),
    );
  }
}
