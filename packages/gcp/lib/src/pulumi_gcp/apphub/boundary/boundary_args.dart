// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Boundary.
class BoundaryArgs {
  /// Optional. The resource name of the CRM node being attached to the
  /// boundary.
  /// Format: `projects/{project-number}`
  final pulumi.Input<String>? crmNode;

  /// The location for the Boundary resource. Must be global.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  BoundaryArgs({
    this.crmNode,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crmNodeValue = crmNode;
    if (crmNodeValue != null) {
      map['crmNode'] = crmNodeValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory BoundaryArgs.fromMap(Map<String, dynamic> map) {
    return BoundaryArgs(
      crmNode: pulumi.Input.asOptionalInput<String>(map['crmNode']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
