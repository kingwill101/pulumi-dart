// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_view_args_doc}
/// The set of arguments for View.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_view_args_doc}
class ViewArgs {
  /// The human-readable display name of the view.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// String with specific view properties, must be non-empty.
  final pulumi.Input<String>? value;

  /// Creates a new [ViewArgs].
  /// [displayName] The human-readable display name of the view.
  /// [location] Optional.
  /// [name] Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view}
  /// [project] Optional.
  /// [value] String with specific view properties, must be non-empty.
  ViewArgs({
    String? displayName,
    String? location,
    String? name,
    String? project,
    String? value,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        value = pulumi.Input.asOptionalInput<String>(value);

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
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
