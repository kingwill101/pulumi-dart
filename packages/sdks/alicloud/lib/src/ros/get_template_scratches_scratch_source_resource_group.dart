// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplateScratchesScratchSourceResourceGroup {
  /// The ID of the Source Resource Group.
  final pulumi.Input<String> resourceGroupId;

  /// Source resource type filter list.
  final pulumi.Input<List<String>> resourceTypeFilters;

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

  factory GetTemplateScratchesScratchSourceResourceGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTemplateScratchesScratchSourceResourceGroup(
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      resourceTypeFilters: pulumi.Input.fromValue(
        (map['resourceTypeFilters'] as List).cast<String>(),
      ),
    );
  }
}
