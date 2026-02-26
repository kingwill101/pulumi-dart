// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegionalParameterVersionRender.
class GetRegionalParameterVersionRenderResult {
  /// The current state of the Regional Parameter Version.
  final bool disabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// The resource name of the RegionalParameterVersion. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final String name;
  final String parameter;

  /// The Parameter data.
  final String parameterData;
  final String parameterVersionId;
  final String project;

  /// The Rendered Parameter Data specifies that if you use `__REF__()` to reference a secret and the format is JSON or YAML, the placeholder `__REF__()` will be replaced with the actual secret value. However, if the format is UNFORMATTED, it will stay the same as the original <span pulumi-lang-nodejs="`parameterData`" pulumi-lang-dotnet="`ParameterData`" pulumi-lang-go="`parameterData`" pulumi-lang-python="`parameter_data`" pulumi-lang-yaml="`parameterData`" pulumi-lang-java="`parameterData`">`parameter_data`</span>.
  final String renderedParameterData;

  GetRegionalParameterVersionRenderResult({
    required this.disabled,
    required this.id,
    required this.location,
    required this.name,
    required this.parameter,
    required this.parameterData,
    required this.parameterVersionId,
    required this.project,
    required this.renderedParameterData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    map['parameter'] = parameter;
    map['parameterData'] = parameterData;
    map['parameterVersionId'] = parameterVersionId;
    map['project'] = project;
    map['renderedParameterData'] = renderedParameterData;
    return map;
  }

  factory GetRegionalParameterVersionRenderResult.fromMap(
      Map<String, dynamic> map) {
    return GetRegionalParameterVersionRenderResult(
      disabled: map['disabled'] as bool,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      parameter: map['parameter'] as String,
      parameterData: map['parameterData'] as String,
      parameterVersionId: map['parameterVersionId'] as String,
      project: map['project'] as String,
      renderedParameterData: map['renderedParameterData'] as String,
    );
  }
}
