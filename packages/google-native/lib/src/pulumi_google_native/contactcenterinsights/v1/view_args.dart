// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for View.
class ViewArgs {
  /// The human-readable display name of the view.
  final Input<String>? displayName;
  final Input<String>? location;

  /// Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  final Input<String>? name;
  final Input<String>? project;

  /// String with specific view properties, must be non-empty.
  final Input<String>? value;

  ViewArgs({
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ViewArgs.fromMap(Map<String, dynamic> map) {
    return ViewArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      value: Input.asOptionalInput<String>(map['value']),
    );
  }
}
