// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getParameterVersionRender.
class GetParameterVersionRenderArgs {
  /// The Parameter for obtaining the Parameter Version.
  /// This can be either the reference of the parameter as in `projects/{{project}}/locations/global/parameters/{{parameter_id}}` or only the name of the parameter as in `{{parameter_id}}`.
  final pulumi.Input<String> parameter;

  /// The version of the parameter to get.
  final pulumi.Input<String> parameterVersionId;

  /// The project for retrieving the Parameter Version. If it's not specified,
  /// the provider project will be used.
  final pulumi.Input<String>? project;

  GetParameterVersionRenderArgs({
    required this.parameter,
    required this.parameterVersionId,
    this.project,
  });

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
      parameter: pulumi.Input.asInput<String>(map['parameter']),
      parameterVersionId:
          pulumi.Input.asInput<String>(map['parameterVersionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
