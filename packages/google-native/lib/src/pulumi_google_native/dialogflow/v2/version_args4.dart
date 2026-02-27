// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Version.
class VersionArgs4 {
  /// Optional. The developer-provided description of this version.
  final Input<String>? description;
  final Input<String>? location;
  final Input<String>? project;

  VersionArgs4({
    this.description,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory VersionArgs4.fromMap(Map<String, dynamic> map) {
    return VersionArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
