// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionalParameterVersion.
class GetRegionalParameterVersionArgs {
  /// The location of regional parameter.
  final pulumi.Input<String>? location;

  /// The parameter for obtaining the Regional Parameter Version.
  /// This can be either the reference of the regional parameter as in `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}` or only the name of the regional parameter as in `{{parameter_id}}`.
  final pulumi.Input<String> parameter;

  /// The version of the regional parameter to get.
  final pulumi.Input<String> parameterVersionId;

  /// The project for retrieving the Regional Parameter Version. If it's not specified,
  /// the provider project will be used.
  final pulumi.Input<String>? project;

  GetRegionalParameterVersionArgs({
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

  factory GetRegionalParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterVersionArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      parameter: pulumi.Input.asInput<String>(map['parameter']),
      parameterVersionId:
          pulumi.Input.asInput<String>(map['parameterVersionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
