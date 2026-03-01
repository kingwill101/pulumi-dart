// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_v1_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_get_database_args_doc}
class GetDatabaseArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseArgs].
  /// [catalogId] Required.
  /// [databaseId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDatabaseArgs({
    required String catalogId,
    required String databaseId,
    required String location,
    String? project,
  }) : catalogId = pulumi.Input.asInput<String>(catalogId),
       databaseId = pulumi.Input.asInput<String>(databaseId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseId': databaseId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      catalogId: map['catalogId'] as String,
      databaseId: map['databaseId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
