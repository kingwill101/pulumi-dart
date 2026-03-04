// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateScratchSourceResourceGroup {
  /// The ID of the Source Resource Group.
  final pulumi.Input<String> resourceGroupId;
  final pulumi.Input<List<String>>? resourceTypeFilters;

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
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      resourceTypeFilters: (() {
        final guardedValue = map['resourceTypeFilters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
