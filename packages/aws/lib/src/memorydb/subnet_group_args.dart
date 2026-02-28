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
    String? description,
    String? name,
    String? namePrefix,
    String? region,
    required List<String> subnetIds,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        region = pulumi.Input.asOptionalInput<String>(region),
        subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return SubnetGroupArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
