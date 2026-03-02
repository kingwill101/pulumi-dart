// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input for command that completes sync migration for a database.
class MigrateSyncCompleteCommandInputResponse {
  /// Time stamp to complete
  final pulumi.Input<String>? commitTimeStamp;
  /// Name of database
  final pulumi.Input<String> databaseName;

  /// Creates a new [MigrateSyncCompleteCommandInputResponse].
  /// [commitTimeStamp] Time stamp to complete
  /// [databaseName] Name of database
  MigrateSyncCompleteCommandInputResponse({
    this.commitTimeStamp,
    required this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitTimeStamp': ?commitTimeStamp,
      'databaseName': databaseName,
    };
  }

  factory MigrateSyncCompleteCommandInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSyncCompleteCommandInputResponse(
      commitTimeStamp: map['commitTimeStamp'] == null ? null : (map['commitTimeStamp']! as String).input(),
      databaseName: (map['databaseName'] as String).input(),
    );
  }
}

