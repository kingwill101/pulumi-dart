// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../parameter_group_parameter/parameter_group_parameter_redshift.dart';

/// The set of arguments for ParameterGroup.
class ParameterGroupRedshiftArgs {
  /// The description of the Redshift parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;

  /// The family of the Redshift parameter group.
  final pulumi.Input<String> family;

  /// The name of the Redshift parameter.
  final pulumi.Input<String>? name;

  /// A list of Redshift parameters to apply.
  final pulumi.Input<List<ParameterGroupParameterRedshift>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// You can read more about the parameters that Redshift supports in the [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  final pulumi.Input<Map<String, String>>? tags;

  ParameterGroupRedshiftArgs({
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
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<ParameterGroupParameterRedshift>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<ParameterGroupParameterRedshift,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory ParameterGroupRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupRedshiftArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      family: pulumi.Input.asInput<String>(map['family']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parameters:
          pulumi.Input.asOptionalInput<List<ParameterGroupParameterRedshift>>(
              map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
