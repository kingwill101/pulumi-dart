// ignore_for_file: unused_element, unnecessary_cast

/// The resource submessage for group checks. It can be used instead of a monitored resource, when multiple resources are being monitored.
class ResourceGroupResponse {
  /// The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  final String groupId;

  /// The resource type of the group members.
  final String resourceType;

  /// Creates a new [ResourceGroupResponse].
  /// [groupId] The group of resources being monitored. Should be only the [GROUP_ID], and not the full-path projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID].
  /// [resourceType] The resource type of the group members.
  ResourceGroupResponse({
    required this.groupId,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['resourceType'] = resourceType;
    return map;
  }

  factory ResourceGroupResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGroupResponse(
      groupId: map['groupId'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
