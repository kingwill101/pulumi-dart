// ignore_for_file: unused_element, unnecessary_cast

class GetUserHierarchyGroupHierarchyPathLevelTwo {
  /// ARN of the hierarchy group.
  final String arn;

  /// The identifier of the hierarchy group.
  final String id;

  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** <span pulumi-lang-nodejs="`instanceId`" pulumi-lang-dotnet="`InstanceId`" pulumi-lang-go="`instanceId`" pulumi-lang-python="`instance_id`" pulumi-lang-yaml="`instanceId`" pulumi-lang-java="`instanceId`">`instance_id`</span> and one of either <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`hierarchyGroupId`" pulumi-lang-dotnet="`HierarchyGroupId`" pulumi-lang-go="`hierarchyGroupId`" pulumi-lang-python="`hierarchy_group_id`" pulumi-lang-yaml="`hierarchyGroupId`" pulumi-lang-java="`hierarchyGroupId`">`hierarchy_group_id`</span> is required.
  final String name;

  GetUserHierarchyGroupHierarchyPathLevelTwo({
    required this.arn,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetUserHierarchyGroupHierarchyPathLevelTwo.fromMap(
      Map<String, dynamic> map) {
    return GetUserHierarchyGroupHierarchyPathLevelTwo(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
