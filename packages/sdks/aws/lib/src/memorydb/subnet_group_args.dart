// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_memorydb_subnet_group_subnet_group_args_doc}
/// The set of arguments for SubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_memorydb_subnet_group_subnet_group_args_doc}
class SubnetGroupArgs {
  /// Description for the subnet group. Defaults to `"Managed by Pulumi"`.
  final pulumi.Input<String>? description;
  /// Name of the subnet group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of VPC Subnet ID-s for the subnet group. At least one subnet must be provided.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SubnetGroupArgs].
  /// [description] Description for the subnet group. Defaults to `"Managed by Pulumi"`.
  /// [name] Name of the subnet group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] Set of VPC Subnet ID-s for the subnet group. At least one subnet must be provided.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SubnetGroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> subnetIds,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'subnetIds': subnetIds,
      'tags': ?tags,
    };
  }

  factory SubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return SubnetGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetIds: pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

