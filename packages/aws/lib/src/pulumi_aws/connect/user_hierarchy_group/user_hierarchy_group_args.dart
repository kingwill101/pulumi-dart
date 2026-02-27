// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserHierarchyGroup.
class UserHierarchyGroupArgs {
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final pulumi.Input<String>? name;

  /// The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  final pulumi.Input<String>? parentGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the hierarchy group. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  UserHierarchyGroupArgs({
    required this.instanceId,
    this.name,
    this.parentGroupId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentGroupIdValue = parentGroupId;
    if (parentGroupIdValue != null) {
      map['parentGroupId'] = parentGroupIdValue;
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

  factory UserHierarchyGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentGroupId: pulumi.Input.asOptionalInput<String>(map['parentGroupId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
