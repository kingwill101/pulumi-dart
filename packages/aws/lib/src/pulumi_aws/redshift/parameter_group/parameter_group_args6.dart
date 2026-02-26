// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter6.dart';

/// The set of arguments for ParameterGroup.
class ParameterGroupArgs6 {
  /// The description of the Redshift parameter group. Defaults to "Managed by Pulumi".
  final Input<String>? description;

  /// The family of the Redshift parameter group.
  final Input<String> family;

  /// The name of the Redshift parameter.
  final Input<String>? name;

  /// A list of Redshift parameters to apply.
  final Input<List<ParameterGroupParameter6>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// You can read more about the parameters that Redshift supports in the [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  final Input<Map<String, String>>? tags;

  ParameterGroupArgs6({
    this.description,
    required this.family,
    this.name,
    this.parameters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['family'] = family;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<
              List<ParameterGroupParameter6>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) =>
              Input.encodeList<ParameterGroupParameter6, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ParameterGroupArgs6.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs6(
      description: Input.asOptionalInput<String>(map['description']),
      family: Input.asInput<String>(map['family']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asOptionalInput<List<ParameterGroupParameter6>>(
          map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
