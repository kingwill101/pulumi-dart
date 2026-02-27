// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProjectExclusion.
class ProjectExclusionArgs {
  /// A human-readable description.
  final pulumi.Input<String>? description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool>? disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String> filter;

  /// The name of the logging exclusion.
  final pulumi.Input<String>? name;

  /// The project to create the exclusion in. If omitted, the project associated with the provider is
  /// used.
  final pulumi.Input<String>? project;

  ProjectExclusionArgs({
    this.description,
    this.disabled,
    required this.filter,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['filter'] = filter;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProjectExclusionArgs.fromMap(Map<String, dynamic> map) {
    return ProjectExclusionArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
