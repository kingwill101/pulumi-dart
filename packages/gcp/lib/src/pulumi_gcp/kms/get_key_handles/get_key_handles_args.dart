// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKeyHandles.
class GetKeyHandlesArgs {
  /// The Google Cloud Platform location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String> location;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource type by which to filter KeyHandle e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  ///
  /// - - -
  final pulumi.Input<String> resourceTypeSelector;

  GetKeyHandlesArgs({
    required this.location,
    this.project,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceTypeSelector'] = resourceTypeSelector;
    return map;
  }

  factory GetKeyHandlesArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyHandlesArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceTypeSelector:
          pulumi.Input.asInput<String>(map['resourceTypeSelector']),
    );
  }
}
