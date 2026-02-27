// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter_neptune.dart';

/// The set of arguments for ClusterParameterGroup.
class ClusterParameterGroupNeptuneArgs {
  /// The description of the neptune cluster parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;

  /// The family of the neptune cluster parameter group.
  final pulumi.Input<String> family;

  /// The name of the neptune parameter.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// A list of neptune parameters to apply.
  final pulumi.Input<List<ClusterParameterGroupParameterNeptune>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ClusterParameterGroupNeptuneArgs({
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
              List<ClusterParameterGroupParameterNeptune>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<
              ClusterParameterGroupParameterNeptune,
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

  factory ClusterParameterGroupNeptuneArgs.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupNeptuneArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      family: pulumi.Input.asInput<String>(map['family']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      parameters: pulumi.Input.asOptionalInput<
          List<ClusterParameterGroupParameterNeptune>>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
