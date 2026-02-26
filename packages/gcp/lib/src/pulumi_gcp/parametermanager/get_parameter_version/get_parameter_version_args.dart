// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getParameterVersion.
class GetParameterVersionArgs {
  /// The parameter for obtaining the Parameter Version.
  /// This can be either the reference of the parameter as in `projects/{{project}}/locations/global/parameters/{{parameter_id}}` or only the name of the parameter as in `{{parameter_id}}`.
  final Input<String> parameter;

  /// The version of the parameter to get.
  final Input<String> parameterVersionId;

  /// The project for retrieving the Parameter Version. If it's not specified,
  /// the provider project will be used.
  final Input<String>? project;

  GetParameterVersionArgs({
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

  factory GetParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterVersionArgs(
      parameter: Input.asInput<String>(map['parameter']),
      parameterVersionId: Input.asInput<String>(map['parameterVersionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
