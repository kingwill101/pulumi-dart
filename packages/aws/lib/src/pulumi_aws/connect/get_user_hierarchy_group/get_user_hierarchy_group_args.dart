// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUserHierarchyGroup.
class GetUserHierarchyGroupArgs {
  /// Returns information on a specific hierarchy group by hierarchy group id
  final Input<String>? hierarchyGroupId;

  /// Reference to the hosting Amazon Connect Instance
  final Input<String> instanceId;

  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`hierarchyGroupId`" pulumi-lang-dotnet="`HierarchyGroupId`" pulumi-lang-go="`hierarchyGroupId`" pulumi-lang-python="`hierarchy_group_id`" pulumi-lang-yaml="`hierarchyGroupId`" pulumi-lang-java="`hierarchyGroupId`">`hierarchy_group_id`</span> is required.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the hierarchy group.
  final Input<Map<String, String>>? tags;

  GetUserHierarchyGroupArgs({
    this.hierarchyGroupId,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hierarchyGroupIdValue = hierarchyGroupId;
    if (hierarchyGroupIdValue != null) {
      map['hierarchyGroupId'] = hierarchyGroupIdValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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

  factory GetUserHierarchyGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupArgs(
      hierarchyGroupId: Input.asOptionalInput<String>(map['hierarchyGroupId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
