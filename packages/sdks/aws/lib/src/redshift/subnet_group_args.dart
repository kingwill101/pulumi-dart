// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_subnet_group_subnet_group_args_doc}
/// The set of arguments for SubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_redshift_subnet_group_subnet_group_args_doc}
class SubnetGroupArgs {
  /// The description of the Redshift Subnet group. Defaults to "Managed by Pulumi".
  final pulumi.Input<String>? description;
  /// The name of the Redshift Subnet group.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An array of VPC subnet IDs.
  final pulumi.Input<List<String>> subnetIds;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SubnetGroupArgs].
  /// [description] The description of the Redshift Subnet group. Defaults to "Managed by Pulumi".
  /// [name] The name of the Redshift Subnet group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetIds] An array of VPC subnet IDs.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SubnetGroupArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> subnetIds,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'subnetIds': subnetIds,
      'tags': ?tags,
    };
  }

  factory SubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return SubnetGroupArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetIds: pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

