// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_key_handle_get_key_handle_args_doc}
/// Arguments for getKeyHandle.
/// {@endtemplate}
/// {@macro pulumi_kms_get_key_handle_get_key_handle_args_doc}
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

  /// Creates a new [GetKeyHandleArgs].
  /// [location] The Google Cloud Platform location for the KeyHandle.
  /// [name] The KeyHandle's name.
  /// [project] The project in which the resource belongs. If it
  GetKeyHandleArgs({
    required String location,
    required String name,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetKeyHandleArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyHandleArgs(
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
