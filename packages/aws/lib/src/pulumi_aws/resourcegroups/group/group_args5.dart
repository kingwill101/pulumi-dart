// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../group_configuration/group_configuration.dart';
import '../group_resource_query/group_resource_query.dart';

/// The set of arguments for Group.
class GroupArgs5 {
  /// A configuration associates the resource group with an AWS service and specifies how the service can interact with the resources in the group. See below for details.
  final Input<List<GroupConfiguration>>? configurations;

  /// A description of the resource group.
  final Input<String>? description;

  /// The resource group's name. A resource group name can have a maximum of 127 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with `AWS` or `aws`.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A `resource_query` block. Resource queries are documented below.
  final Input<GroupResourceQuery>? resourceQuery;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  GroupArgs5({
    this.configurations,
    this.description,
    this.name,
    this.region,
    this.resourceQuery,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationsValue = configurations;
    if (configurationsValue != null) {
      map['configurations'] = Input.mapOptionalInputValue<
              List<GroupConfiguration>, List<Map<String, dynamic>>>(
          configurationsValue,
          (value) => Input.encodeList<GroupConfiguration, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceQueryValue = resourceQuery;
    if (resourceQueryValue != null) {
      map['resourceQuery'] =
          Input.mapOptionalInputValue<GroupResourceQuery, Map<String, dynamic>>(
              resourceQueryValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GroupArgs5.fromMap(Map<String, dynamic> map) {
    return GroupArgs5(
      configurations: Input.asOptionalInput<List<GroupConfiguration>>(
          map['configurations']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceQuery:
          Input.asOptionalInput<GroupResourceQuery>(map['resourceQuery']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
