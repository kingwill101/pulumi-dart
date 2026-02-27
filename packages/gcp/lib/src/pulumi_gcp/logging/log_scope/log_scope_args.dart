// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LogScope.
class LogScopeArgs {
  /// Describes this log scopes.
  final pulumi.Input<String>? description;

  /// The location of the resource. The only supported location is global so far.
  final pulumi.Input<String>? location;

  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  final pulumi.Input<String>? name;

  /// The parent of the resource.
  final pulumi.Input<String>? parent;

  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  final pulumi.Input<List<String>> resourceNames;

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      resourceNames: pulumi.Input.asInput<List<String>>(map['resourceNames']),
    );
  }
}
