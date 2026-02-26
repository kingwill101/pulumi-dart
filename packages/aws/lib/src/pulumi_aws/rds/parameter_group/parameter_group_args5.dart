// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter5.dart';

/// The set of arguments for ParameterGroup.
class ParameterGroupArgs5 {
  /// The description of the DB parameter group. Defaults to "Managed by Pulumi".
  final Input<String>? description;

  /// The family of the DB parameter group.
  final Input<String> family;

  /// The name of the DB parameter group. If omitted, this provider will assign a random, unique name.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// The DB parameters to apply. See <span pulumi-lang-nodejs="`parameter`" pulumi-lang-dotnet="`Parameter`" pulumi-lang-go="`parameter`" pulumi-lang-python="`parameter`" pulumi-lang-yaml="`parameter`" pulumi-lang-java="`parameter`">`parameter`</span> Block below for more details. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via [`aws rds describe-db-parameters`](https://docs.aws.amazon.com/cli/latest/reference/rds/describe-db-parameters.html) after initial creation of the group.
  final Input<List<ParameterGroupParameter5>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Set to true if you do not wish the parameter group to be deleted at destroy time, and instead just remove the parameter group from the Terraform state.
  final Input<bool>? skipDestroy;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ParameterGroupArgs5({
    this.description,
    required this.family,
    this.name,
    this.namePrefix,
    this.parameters,
    this.region,
    this.skipDestroy,
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
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<
              List<ParameterGroupParameter5>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) =>
              Input.encodeList<ParameterGroupParameter5, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final skipDestroyValue = skipDestroy;
    if (skipDestroyValue != null) {
      map['skipDestroy'] = skipDestroyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ParameterGroupArgs5.fromMap(Map<String, dynamic> map) {
    return ParameterGroupArgs5(
      description: Input.asOptionalInput<String>(map['description']),
      family: Input.asInput<String>(map['family']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      parameters: Input.asOptionalInput<List<ParameterGroupParameter5>>(
          map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      skipDestroy: Input.asOptionalInput<bool>(map['skipDestroy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
