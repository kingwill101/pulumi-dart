// ignore_for_file: unused_element, unnecessary_cast


class GetTemplateScratchesScratchSourceResourceGroup {
  /// The ID of the Source Resource Group.
  final String resourceGroupId;
  /// Source resource type filter list.
  final List<String> resourceTypeFilters;

  /// Creates a new [GetTemplateScratchesScratchSourceResourceGroup].
  /// [resourceGroupId] The ID of the Source Resource Group.
  /// [resourceTypeFilters] Source resource type filter list.
  GetTemplateScratchesScratchSourceResourceGroup({
    required this.resourceGroupId,
    required this.resourceTypeFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupId': resourceGroupId,
      'resourceTypeFilters': resourceTypeFilters,
    };
  }

  factory GetTemplateScratchesScratchSourceResourceGroup.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratchSourceResourceGroup(
      resourceGroupId: map['resourceGroupId'] as String,
      resourceTypeFilters: (map['resourceTypeFilters'] as List).cast<String>(),
    );
  }
}

