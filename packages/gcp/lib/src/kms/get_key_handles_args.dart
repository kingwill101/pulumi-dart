// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_key_handles_get_key_handles_args_doc}
/// Arguments for getKeyHandles.
/// {@endtemplate}
/// {@macro pulumi_kms_get_key_handles_get_key_handles_args_doc}
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

  /// Creates a new [GetKeyHandlesArgs].
  /// [location] The Google Cloud Platform location for the KeyHandle.
  /// [project] The project in which the resource belongs. If it
  /// [resourceTypeSelector] The resource type by which to filter KeyHandle e.g. {SERVICE}.googleapis.com/{TYPE}. See documentation for supported resource types.
  GetKeyHandlesArgs({
    required String location,
    String? project,
    required String resourceTypeSelector,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceTypeSelector = pulumi.Input.asInput<String>(resourceTypeSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'resourceTypeSelector': resourceTypeSelector,
    };
  }

  factory GetKeyHandlesArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyHandlesArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resourceTypeSelector: map['resourceTypeSelector'] as String,
    );
  }
}

