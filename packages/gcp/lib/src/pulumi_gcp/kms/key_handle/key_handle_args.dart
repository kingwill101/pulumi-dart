// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeyHandle.
class KeyHandleArgs {
  /// The location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final Input<String> location;

  /// The resource name for the KeyHandle.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Selector of the resource type where we want to protect resources.
  /// For example, `storage.googleapis.com/Bucket`.
  final Input<String> resourceTypeSelector;

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
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceTypeSelector: Input.asInput<String>(map['resourceTypeSelector']),
    );
  }
}
