// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LogScope.
class LogScopeArgs {
  /// Describes this log scopes.
  final Input<String>? description;

  /// The location of the resource. The only supported location is global so far.
  final Input<String>? location;

  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  final Input<String>? name;

  /// The parent of the resource.
  final Input<String>? parent;

  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  final Input<List<String>> resourceNames;

  LogScopeArgs({
    this.description,
    this.location,
    this.name,
    this.parent,
    required this.resourceNames,
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    map['resourceNames'] = resourceNames;
    return map;
  }

  factory LogScopeArgs.fromMap(Map<String, dynamic> map) {
    return LogScopeArgs(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asOptionalInput<String>(map['parent']),
      resourceNames: Input.asInput<List<String>>(map['resourceNames']),
    );
  }
}
