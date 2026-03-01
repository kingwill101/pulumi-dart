// ignore_for_file: unused_element, unnecessary_cast


/// Input for command that completes sync migration for a database.
class MigrateSyncCompleteCommandInputResponse {
  /// Time stamp to complete
  final String? commitTimeStamp;
  /// Name of database
  final String databaseName;

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
      commitTimeStamp: map['commitTimeStamp'] == null ? null : map['commitTimeStamp'] as String,
      databaseName: map['databaseName'] as String,
    );
  }
}

