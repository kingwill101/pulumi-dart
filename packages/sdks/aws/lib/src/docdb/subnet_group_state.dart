// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubnetGroup resources.
class SubnetGroupState {
  /// The ARN of the docDB subnet group.
  final pulumi.Input<String>? arn;
  /// The description of the docDB subnet group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;
  /// The name of the docDB subnet group. If omitted, this provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of VPC subnet IDs.
  final pulumi.Input<List<String>>? subnetIds;
  /// The network type of the docDB subnet group (`IPV4` or `DUAL`).
  final pulumi.Input<List<String>>? supportedNetworkTypes;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SubnetGroupState].
  /// [arn] The ARN of the docDB subnet group.
  /// [description] The description of the docDB subnet group. Defaults to "Managed by Pulumi".
  /// [name] The name of the docDB subnet group. If omitted, this provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] A list of VPC subnet IDs.
  /// [supportedNetworkTypes] The network type of the docDB subnet group (`IPV4` or `DUAL`).
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SubnetGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<List<String>>? supportedNetworkTypes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      supportedNetworkTypes = pulumi.Input.asOptionalInput<List<String>>(supportedNetworkTypes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'subnetIds': ?subnetIds,
      'supportedNetworkTypes': ?supportedNetworkTypes,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SubnetGroupState.fromMap(Map<String, dynamic> map) {
    return SubnetGroupState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      supportedNetworkTypes: map['supportedNetworkTypes'] == null ? null : pulumi.Output.create<List<String>>((map['supportedNetworkTypes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

