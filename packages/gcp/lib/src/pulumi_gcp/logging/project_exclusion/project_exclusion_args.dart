// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProjectExclusion.
class ProjectExclusionArgs {
  /// A human-readable description.
  final Input<String>? description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final Input<bool>? disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final Input<String> filter;

  /// The name of the logging exclusion.
  final Input<String>? name;

  /// The project to create the exclusion in. If omitted, the project associated with the provider is
  /// used.
  final Input<String>? project;

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
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      filter: Input.asInput<String>(map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
