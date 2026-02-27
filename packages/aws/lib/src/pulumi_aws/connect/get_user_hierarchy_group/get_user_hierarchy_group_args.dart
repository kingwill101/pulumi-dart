// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUserHierarchyGroup.
class GetUserHierarchyGroupArgs {
  /// Returns information on a specific hierarchy group by hierarchy group id
  final pulumi.Input<String>? hierarchyGroupId;

  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;

  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `hierarchy_group_id` is required.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the hierarchy group.
  final pulumi.Input<Map<String, String>>? tags;

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
      hierarchyGroupId:
          pulumi.Input.asOptionalInput<String>(map['hierarchyGroupId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
