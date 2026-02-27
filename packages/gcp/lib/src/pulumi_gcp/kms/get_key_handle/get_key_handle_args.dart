// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKeyHandle.
class GetKeyHandleArgs {
  /// The Google Cloud Platform location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The KeyHandle's name.
  /// A KeyHandle name must exist within the provided location and must be valid UUID.
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetKeyHandleArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeyHandleArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyHandleArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
