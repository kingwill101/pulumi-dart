// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_regional_parameter_version_render_get_regional_parameter_version_render_args_doc}
/// Arguments for getRegionalParameterVersionRender.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_regional_parameter_version_render_get_regional_parameter_version_render_args_doc}
class GetRegionalParameterVersionRenderArgs {
  /// Location of Parameter Manager regional Parameter resource.
  /// It must be provided when the `parameter` field provided consists of only the name of the regional parameter.
  final pulumi.Input<String>? location;
  /// The Parameter for obtaining the Regional Parameter Version.
  /// This can be either the reference of the parameter as in `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}` or only the name of the parameter as in `{{parameter_id}}`.
  final pulumi.Input<String> parameter;
  /// The version of the regional parameter to get.
  final pulumi.Input<String> parameterVersionId;
  /// The project for retrieving the Regional Parameter Version. If it's not
  /// specified, the provider project will be used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRegionalParameterVersionRenderArgs].
  /// [location] Location of Parameter Manager regional Parameter resource.
  /// [parameter] The Parameter for obtaining the Regional Parameter Version.
  /// [parameterVersionId] The version of the regional parameter to get.
  /// [project] The project for retrieving the Regional Parameter Version. If it's not
  GetRegionalParameterVersionRenderArgs({
    String? location,
    required String parameter,
    required String parameterVersionId,
    String? project,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      parameter = pulumi.Input.asInput<String>(parameter),
      parameterVersionId = pulumi.Input.asInput<String>(parameterVersionId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'parameter': parameter,
      'parameterVersionId': parameterVersionId,
      'project': ?project,
    };
  }

  factory GetRegionalParameterVersionRenderArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterVersionRenderArgs(
      location: map['location'] == null ? null : map['location'] as String,
      parameter: map['parameter'] as String,
      parameterVersionId: map['parameterVersionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

