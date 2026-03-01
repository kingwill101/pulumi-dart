// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_configuration.dart';
import 'group_resource_query.dart';

/// {@template pulumi_resourcegroups_group_group_args_doc}
/// The set of arguments for Group.
/// {@endtemplate}
/// {@macro pulumi_resourcegroups_group_group_args_doc}
class GroupArgs {
  /// A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. See below for details.
  final pulumi.Input<List<GroupConfiguration>>? configurations;
  /// A description of the resource group.
  final pulumi.Input<String>? description;
  /// The resource group's name. A resource group name can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with `AWS` or `aws`.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A `resource_query` block. Resource queries are documented below.
  final pulumi.Input<GroupResourceQuery>? resourceQuery;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GroupArgs].
  /// [configurations] A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. See below for details.
  /// [description] A description of the resource group.
  /// [name] The resource group's name. A resource group name can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with `AWS` or `aws`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceQuery] A `resource_query` block. Resource queries are documented below.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  GroupArgs({
    List<GroupConfiguration>? configurations,
    String? description,
    String? name,
    String? region,
    GroupResourceQuery? resourceQuery,
    Map<String, String>? tags,
  }) :
      configurations = pulumi.Input.asOptionalInput<List<GroupConfiguration>>(configurations),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceQuery = pulumi.Input.asOptionalInput<GroupResourceQuery>(resourceQuery),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<GroupConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<GroupConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'resourceQuery': ?pulumi.Input.mapOptionalInputValue<GroupResourceQuery, Map<String, dynamic>>(resourceQuery, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GroupArgs.fromMap(Map<String, dynamic> map) {
    return GroupArgs(
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<GroupConfiguration>(map['configurations'], (value) => GroupConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceQuery: map['resourceQuery'] == null ? null : GroupResourceQuery.fromMap((map['resourceQuery'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

