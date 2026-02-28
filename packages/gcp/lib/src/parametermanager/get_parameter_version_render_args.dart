// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_parameter_version_render_get_parameter_version_render_args_doc}
/// Arguments for getParameterVersionRender.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_parameter_version_render_get_parameter_version_render_args_doc}
class GetParameterVersionRenderArgs {
  /// The Parameter for obtaining the Parameter Version.
  /// This can be either the reference of the parameter as in `projects/{{project}}/locations/global/parameters/{{parameter_id}}` or only the name of the parameter as in `{{parameter_id}}`.
  final pulumi.Input<String> parameter;

  /// The version of the parameter to get.
  final pulumi.Input<String> parameterVersionId;

  /// The project for retrieving the Parameter Version. If it's not specified,
  /// the provider project will be used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetParameterVersionRenderArgs].
  /// [parameter] The Parameter for obtaining the Parameter Version.
  /// [parameterVersionId] The version of the parameter to get.
  /// [project] The project for retrieving the Parameter Version. If it's not specified,
  GetParameterVersionRenderArgs({
    required String parameter,
    required String parameterVersionId,
    String? project,
  })  : parameter = pulumi.Input.asInput<String>(parameter),
        parameterVersionId = pulumi.Input.asInput<String>(parameterVersionId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parameter'] = parameter;
    map['parameterVersionId'] = parameterVersionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetParameterVersionRenderArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterVersionRenderArgs(
      parameter: map['parameter'] as String,
      parameterVersionId: map['parameterVersionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
