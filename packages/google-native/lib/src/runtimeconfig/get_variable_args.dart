// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_v1beta1_get_variable_args_doc}
/// Arguments for getVariable.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_get_variable_args_doc}
class GetVariableArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> variableId;

  /// Creates a new [GetVariableArgs].
  /// [configId] Required.
  /// [project] Optional.
  /// [variableId] Required.
  GetVariableArgs({
    required String configId,
    String? project,
    required String variableId,
  })  : configId = pulumi.Input.asInput<String>(configId),
        project = pulumi.Input.asOptionalInput<String>(project),
        variableId = pulumi.Input.asInput<String>(variableId);

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
      configId: map['configId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      variableId: map['variableId'] as String,
    );
  }
}
