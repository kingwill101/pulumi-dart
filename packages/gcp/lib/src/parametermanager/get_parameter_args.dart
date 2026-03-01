// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_parameter_get_parameter_args_doc}
/// Arguments for getParameter.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_parameter_get_parameter_args_doc}
class GetParameterArgs {
  /// The name of the parameter.
  final pulumi.Input<String> parameterId;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [GetParameterArgs].
  /// [parameterId] The name of the parameter.
  /// [project] The ID of the project in which the resource belongs.
  GetParameterArgs({required String parameterId, String? project})
    : parameterId = pulumi.Input.asInput<String>(parameterId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'parameterId': parameterId, 'project': ?project};
  }

  factory GetParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterArgs(
      parameterId: map['parameterId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
