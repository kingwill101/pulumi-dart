// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionalParameterVersionRender.
class GetRegionalParameterVersionRenderArgs {
  /// Location of Parameter Manager regional Parameter resource.
  /// It must be provided when the `parameter` field provided consists of only the name of the regional parameter.
  final Input<String>? location;

  /// The Parameter for obtaining the Regional Parameter Version.
  /// This can be either the reference of the parameter as in `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}` or only the name of the parameter as in `{{parameter_id}}`.
  final Input<String> parameter;

  /// The version of the regional parameter to get.
  final Input<String> parameterVersionId;

  /// The project for retrieving the Regional Parameter Version. If it's not
  /// specified, the provider project will be used.
  final Input<String>? project;

  GetRegionalParameterVersionRenderArgs({
    this.location,
    required this.parameter,
    required this.parameterVersionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['parameter'] = parameter;
    map['parameterVersionId'] = parameterVersionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetRegionalParameterVersionRenderArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionalParameterVersionRenderArgs(
      location: Input.asOptionalInput<String>(map['location']),
      parameter: Input.asInput<String>(map['parameter']),
      parameterVersionId: Input.asInput<String>(map['parameterVersionId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
