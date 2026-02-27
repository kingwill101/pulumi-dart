// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAutonomousDatabases.
class GetAutonomousDatabasesArgs {
  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetAutonomousDatabasesArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAutonomousDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
