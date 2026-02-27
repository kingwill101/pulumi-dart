// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../parameter_group_parameter/parameter_group_parameter_memorydb.dart';

/// The set of arguments for ParameterGroup.
class ParameterGroupMemorydbArgs {
  /// Description for the parameter group. Defaults to `"Managed by Pulumi"`.
  final pulumi.Input<String>? description;

  /// The engine version that the parameter group can be used with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> family;

  /// Name of the parameter group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// Set of MemoryDB parameters to apply. Any parameters not specified will fall back to their family defaults. Detailed below.
  final pulumi.Input<List<ParameterGroupParameterMemorydb>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ParameterGroupMemorydbArgs({
    this.description,
    required this.family,
    this.name,
    this.namePrefix,
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
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<ParameterGroupParameterMemorydb>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<ParameterGroupParameterMemorydb,
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

  factory ParameterGroupMemorydbArgs.fromMap(Map<String, dynamic> map) {
    return ParameterGroupMemorydbArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      family: pulumi.Input.asInput<String>(map['family']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      parameters:
          pulumi.Input.asOptionalInput<List<ParameterGroupParameterMemorydb>>(
              map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
