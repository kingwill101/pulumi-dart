// ignore_for_file: unused_element, unnecessary_cast


class TemplateScratchSourceResourceGroup {
  /// The ID of the Source Resource Group.
  final String resourceGroupId;
  final List<String>? resourceTypeFilters;

  /// Creates a new [TemplateScratchSourceResourceGroup].
  /// [resourceGroupId] The ID of the Source Resource Group.
  /// [resourceTypeFilters] Optional.
  TemplateScratchSourceResourceGroup({
    required this.resourceGroupId,
    this.resourceTypeFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupId': resourceGroupId,
      'resourceTypeFilters': ?resourceTypeFilters,
    };
  }

  factory TemplateScratchSourceResourceGroup.fromMap(Map<String, dynamic> map) {
    return TemplateScratchSourceResourceGroup(
      resourceGroupId: map['resourceGroupId'] as String,
      resourceTypeFilters: map['resourceTypeFilters'] == null ? null : (map['resourceTypeFilters'] as List).cast<String>(),
    );
  }
}

