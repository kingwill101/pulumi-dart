// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFunction.
class GetFunctionArgs2 {
  /// The location in which the resource belongs.
  ///
  /// - - -
  final Input<String> location;

  /// The name of a Cloud Function (2nd gen).
  final Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetFunctionArgs2({
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

  factory GetFunctionArgs2.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs2(
      location: Input.asInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
