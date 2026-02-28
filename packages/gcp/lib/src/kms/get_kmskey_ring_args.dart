// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmskey_ring_get_kmskey_ring_args_doc}
/// Arguments for getKMSKeyRing.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmskey_ring_get_kmskey_ring_args_doc}
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

  /// Creates a new [GetKMSKeyRingArgs].
  /// [location] The Google Cloud Platform location for the KeyRing.
  /// [name] The KeyRing's name.
  /// [project] The project in which the resource belongs. If it
  GetKMSKeyRingArgs({
    required String location,
    required String name,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
