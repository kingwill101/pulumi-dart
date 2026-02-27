// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataSourceReferences.
class GetDataSourceReferencesArgs {
  final pulumi.Input<String> location;

  /// - (Optional) The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resource_type` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? resourceType;

  GetDataSourceReferencesArgs({
    required this.location,
    this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    return map;
  }

  factory GetDataSourceReferencesArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferencesArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceType: pulumi.Input.asOptionalInput<String>(map['resourceType']),
    );
  }
}
