// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Version.
class VersionDialogflowV2beta1Args {
  /// Optional. The developer-provided description of this version.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  VersionDialogflowV2beta1Args({
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

  factory VersionDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return VersionDialogflowV2beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
