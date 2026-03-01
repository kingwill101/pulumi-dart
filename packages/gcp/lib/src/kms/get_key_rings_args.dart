// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_key_rings_get_key_rings_args_doc}
/// Arguments for getKeyRings.
/// {@endtemplate}
/// {@macro pulumi_kms_get_key_rings_get_key_rings_args_doc}
class GetKeyRingsArgs {
  /// The filter argument is used to add a filter query parameter that limits which key rings are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  ///
  /// Example filter values if filtering on name. Note: names take the form projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}.
  ///
  /// * `"name:my-key-"` will retrieve key rings that contain "my-key-" anywhere in their name.
  /// * `"name=projects/my-project/locations/global/keyRings/my-key-ring"` will only retrieve a key with that exact name.
  ///
  /// [See the documentation about using filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
  final pulumi.Input<String>? filter;

  /// The location that the underlying key ring resides in. e.g us-west1
  final pulumi.Input<String> location;

  /// The Project ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeyRingsArgs].
  /// [filter] The filter argument is used to add a filter query parameter that limits which key rings are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  /// [location] The location that the underlying key ring resides in. e.g us-west1
  /// [project] The Project ID of the project.
  GetKeyRingsArgs({String? filter, required String location, String? project})
    : filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': location,
      'project': ?project,
    };
  }

  factory GetKeyRingsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
