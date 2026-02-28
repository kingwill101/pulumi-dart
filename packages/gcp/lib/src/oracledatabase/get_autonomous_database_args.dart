// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_autonomous_database_get_autonomous_database_args_doc}
/// Arguments for getAutonomousDatabase.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_autonomous_database_get_autonomous_database_args_doc}
class GetAutonomousDatabaseArgs {
  /// The ID of the AutonomousDatabase.
  final pulumi.Input<String> autonomousDatabaseId;

  /// The location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutonomousDatabaseArgs].
  /// [autonomousDatabaseId] The ID of the AutonomousDatabase.
  /// [location] The location of the resource.
  /// [project] The project to which the resource belongs. If it
  GetAutonomousDatabaseArgs({
    required String autonomousDatabaseId,
    required String location,
    String? project,
  })  : autonomousDatabaseId =
            pulumi.Input.asInput<String>(autonomousDatabaseId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      autonomousDatabaseId: map['autonomousDatabaseId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
