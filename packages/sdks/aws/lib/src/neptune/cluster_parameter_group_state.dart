// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_parameter_group_parameter.dart';

/// Input properties used for looking up and filtering ClusterParameterGroup resources.
class ClusterParameterGroupState {
  /// The ARN of the neptune cluster parameter group.
  final pulumi.Input<String>? arn;
  /// The description of the neptune cluster parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;
  /// The family of the neptune cluster parameter group.
  final pulumi.Input<String>? family;
  /// The name of the neptune parameter.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// A list of neptune parameters to apply.
  final pulumi.Input<List<ClusterParameterGroupParameter>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClusterParameterGroupState].
  /// [arn] The ARN of the neptune cluster parameter group.
  /// [description] The description of the neptune cluster parameter group. Defaults to "Managed by Pulumi".
  /// [family] The family of the neptune cluster parameter group.
  /// [name] The name of the neptune parameter.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [parameters] A list of neptune parameters to apply.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ClusterParameterGroupState({
    this.arn,
    this.description,
    this.family,
    this.name,
    this.namePrefix,
    this.parameters,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'family': ?family,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ClusterParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ClusterParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClusterParameterGroupState.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ClusterParameterGroupParameter>(map['parameters'], (value) => ClusterParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

