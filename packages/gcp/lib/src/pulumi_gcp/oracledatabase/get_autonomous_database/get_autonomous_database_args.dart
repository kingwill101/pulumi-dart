// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAutonomousDatabase.
class GetAutonomousDatabaseArgs {
  /// The ID of the AutonomousDatabase.
  final Input<String> autonomousDatabaseId;

  /// The location of the resource.
  ///
  /// - - -
  final Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetAutonomousDatabaseArgs({
    required this.autonomousDatabaseId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autonomousDatabaseId'] = autonomousDatabaseId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAutonomousDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseArgs(
      autonomousDatabaseId: Input.asInput<String>(map['autonomousDatabaseId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
