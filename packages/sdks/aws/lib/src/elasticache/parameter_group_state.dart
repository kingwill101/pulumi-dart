// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_parameter.dart';

/// Input properties used for looking up and filtering ParameterGroup resources.
class ParameterGroupState {
  /// The AWS ARN associated with the parameter group.
  final pulumi.Input<String>? arn;
  /// The description of the ElastiCache parameter group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;
  /// The family of the ElastiCache parameter group.
  final pulumi.Input<String>? family;
  /// The name of the ElastiCache parameter.
  final pulumi.Input<String>? name;
  /// A list of ElastiCache parameters to apply.
  final pulumi.Input<List<ParameterGroupParameter>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ParameterGroupState].
  /// [arn] The AWS ARN associated with the parameter group.
  /// [description] The description of the ElastiCache parameter group. Defaults to "Managed by Pulumi".
  /// [family] The family of the ElastiCache parameter group.
  /// [name] The name of the ElastiCache parameter.
  /// [parameters] A list of ElastiCache parameters to apply.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ParameterGroupState({
    this.arn,
    this.description,
    this.family,
    this.name,
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
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ParameterGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ParameterGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ParameterGroupState.fromMap(Map<String, dynamic> map) {
    return ParameterGroupState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      family: map['family'] == null ? null : ((map['family'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      parameters: map['parameters'] == null ? null : ((pulumi.Input.decodeList<ParameterGroupParameter>(map['parameters']!, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

