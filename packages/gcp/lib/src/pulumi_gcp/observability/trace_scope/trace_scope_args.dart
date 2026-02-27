// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TraceScope.
class TraceScopeArgs {
  /// Describes this trace scope.
  /// The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;

  /// GCP region the TraceScope is stored in. Only `global` is supported.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Names of the projects that are included in this trace scope.
  /// *  `projects/[PROJECT_ID]`
  /// A trace scope can include a maximum of 20 projects.
  final pulumi.Input<List<String>> resourceNames;

  /// A client-assigned identifier for the trace scope.
  final pulumi.Input<String> traceScopeId;

  TraceScopeArgs({
    this.description,
    required this.location,
    this.project,
    required this.resourceNames,
    required this.traceScopeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceNames'] = resourceNames;
    map['traceScopeId'] = traceScopeId;
    return map;
  }

  factory TraceScopeArgs.fromMap(Map<String, dynamic> map) {
    return TraceScopeArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceNames: pulumi.Input.asInput<List<String>>(map['resourceNames']),
      traceScopeId: pulumi.Input.asInput<String>(map['traceScopeId']),
    );
  }
}
