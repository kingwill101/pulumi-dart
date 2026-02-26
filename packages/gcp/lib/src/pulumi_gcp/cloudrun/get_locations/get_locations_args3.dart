// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLocations.
class GetLocationsArgs3 {
  /// The project to list versions for. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetLocationsArgs3({
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLocationsArgs3.fromMap(Map<String, dynamic> map) {
    return GetLocationsArgs3(
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
