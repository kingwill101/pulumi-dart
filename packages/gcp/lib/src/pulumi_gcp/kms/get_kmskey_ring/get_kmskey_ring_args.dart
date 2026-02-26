// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKMSKeyRing.
class GetKMSKeyRingArgs {
  /// The Google Cloud Platform location for the KeyRing.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  ///
  /// - - -
  final Input<String> location;

  /// The KeyRing's name.
  /// A KeyRing name must exist within the provided location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetKMSKeyRingArgs({
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

  factory GetKMSKeyRingArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSKeyRingArgs(
      location: Input.asInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
