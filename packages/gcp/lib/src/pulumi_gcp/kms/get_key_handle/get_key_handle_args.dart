// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKeyHandle.
class GetKeyHandleArgs {
  /// The Google Cloud Platform location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  ///
  /// - - -
  final Input<String> location;

  /// The KeyHandle's name.
  /// A KeyHandle name must exist within the provided location and must be valid UUID.
  final Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
