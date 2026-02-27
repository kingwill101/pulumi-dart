// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigResourceGroup {
  /// The group of resources being monitored. Should be the `name` of a group
  final String? groupId;

  /// The resource type of the group members.
  /// Possible values are: `RESOURCE_TYPE_UNSPECIFIED`, `INSTANCE`, `AWS_ELB_LOAD_BALANCER`.
  final String? resourceType;

  UptimeCheckConfigResourceGroup({
    this.groupId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupIdValue = groupId;
    if (groupIdValue != null) {
      map['groupId'] = groupIdValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory UptimeCheckConfigResourceGroup.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigResourceGroup(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}
