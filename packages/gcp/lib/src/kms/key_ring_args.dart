// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_key_ring_key_ring_args_doc}
/// The set of arguments for KeyRing.
/// {@endtemplate}
/// {@macro pulumi_kms_key_ring_key_ring_args_doc}
class KeyRingArgs {
  /// The location for the KeyRing.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String> location;

  /// The resource name for the KeyRing.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [KeyRingArgs].
  /// [location] The location for the KeyRing.
  /// [name] The resource name for the KeyRing.
  /// [project] The ID of the project in which the resource belongs.
  KeyRingArgs({
    required String location,
    String? name,
    String? project,
  })  : location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

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
    return map;
  }

  factory KeyRingArgs.fromMap(Map<String, dynamic> map) {
    return KeyRingArgs(
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
