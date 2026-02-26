// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKeyRings.
class GetKeyRingsArgs {
  /// The filter argument is used to add a filter query parameter that limits which key rings are retrieved by the data source: ?filter={{filter}}. When no value is provided there is no filtering.
  ///
  /// Example filter values if filtering on name. Note: names take the form projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}.
  ///
  /// * `"name:my-key-"` will retrieve key rings that contain "my-key-" anywhere in their name.
  /// * `"name=projects/my-project/locations/global/keyRings/my-key-ring"` will only retrieve a key with that exact name.
  ///
  /// [See the documentation about using filters](https://cloud.google.com/kms/docs/sorting-and-filtering)
  final Input<String>? filter;

  /// The location that the underlying key ring resides in. e.g us-west1
  final Input<String> location;

  /// The Project ID of the project.
  final Input<String>? project;

  GetKeyRingsArgs({
    this.filter,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeyRingsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsArgs(
      filter: Input.asOptionalInput<String>(map['filter']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
