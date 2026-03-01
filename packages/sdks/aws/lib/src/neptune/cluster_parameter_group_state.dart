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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? family,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<List<ClusterParameterGroupParameter>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      family = pulumi.Input.asOptionalInput<String>(family),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      parameters = pulumi.Input.asOptionalInput<List<ClusterParameterGroupParameter>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      family: map['family'] == null ? null : pulumi.Output.create<String>(map['family'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ClusterParameterGroupParameter>>(pulumi.Input.decodeList<ClusterParameterGroupParameter>(map['parameters'], (value) => ClusterParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

