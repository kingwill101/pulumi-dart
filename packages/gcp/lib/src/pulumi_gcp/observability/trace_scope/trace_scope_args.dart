// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TraceScope.
class TraceScopeArgs {
  /// Describes this trace scope.
  /// The maximum length of the description is 8000 characters.
  final Input<String>? description;

  /// GCP region the TraceScope is stored in. Only <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span> is supported.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Names of the projects that are included in this trace scope.
  /// *  `projects/[PROJECT_ID]`
  /// A trace scope can include a maximum of 20 projects.
  final Input<List<String>> resourceNames;

  /// A client-assigned identifier for the trace scope.
  final Input<String> traceScopeId;

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
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceNames: Input.asInput<List<String>>(map['resourceNames']),
      traceScopeId: Input.asInput<String>(map['traceScopeId']),
    );
  }
}
