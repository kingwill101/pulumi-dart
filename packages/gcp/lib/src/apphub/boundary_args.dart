// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apphub_boundary_boundary_args_doc}
/// The set of arguments for Boundary.
/// {@endtemplate}
/// {@macro pulumi_apphub_boundary_boundary_args_doc}
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

  /// Creates a new [BoundaryArgs].
  /// [crmNode] Optional. The resource name of the CRM node being attached to the
  /// [location] The location for the Boundary resource. Must be global.
  /// [project] The ID of the project in which the resource belongs.
  BoundaryArgs({
    String? crmNode,
    required String location,
    String? project,
  })  : crmNode = pulumi.Input.asOptionalInput<String>(crmNode),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      crmNode: map['crmNode'] == null ? null : map['crmNode'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
