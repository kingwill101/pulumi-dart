// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KeyHandle.
class KeyHandleArgs {
  /// The location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String> location;

  /// The resource name for the KeyHandle.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Selector of the resource type where we want to protect resources.
  /// For example, `storage.googleapis.com/Bucket`.
  final pulumi.Input<String> resourceTypeSelector;

  KeyHandleArgs({
    required this.location,
    this.name,
    this.project,
    required this.resourceTypeSelector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceTypeSelector'] = resourceTypeSelector;
    return map;
  }

  factory KeyHandleArgs.fromMap(Map<String, dynamic> map) {
    return KeyHandleArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceTypeSelector:
          pulumi.Input.asInput<String>(map['resourceTypeSelector']),
    );
  }
}
