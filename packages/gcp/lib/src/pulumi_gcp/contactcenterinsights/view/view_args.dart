// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for View.
class ViewArgs {
  /// The human-readable display name of the view.
  final pulumi.Input<String>? displayName;

  /// Location of the resource.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A filter to reduce conversation results to a specific subset.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  final pulumi.Input<String>? value;

  ViewArgs({
    this.displayName,
    required this.location,
    this.project,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
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
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      value: pulumi.Input.asOptionalInput<String>(map['value']),
    );
  }
}
