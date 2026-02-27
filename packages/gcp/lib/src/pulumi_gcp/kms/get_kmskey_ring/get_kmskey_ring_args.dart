// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKMSKeyRing.
class GetKMSKeyRingArgs {
  /// The Google Cloud Platform location for the KeyRing.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The KeyRing's name.
  /// A KeyRing name must exist within the provided location and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

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
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
