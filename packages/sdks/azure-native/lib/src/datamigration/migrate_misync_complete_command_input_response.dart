// ignore_for_file: unused_element, unnecessary_cast


/// Input for command that completes online migration for an Azure SQL Database Managed Instance.
class MigrateMISyncCompleteCommandInputResponse {
  /// Name of managed instance database
  final String sourceDatabaseName;

  /// Creates a new [MigrateMISyncCompleteCommandInputResponse].
  /// [sourceDatabaseName] Name of managed instance database
  MigrateMISyncCompleteCommandInputResponse({
    required this.sourceDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDatabaseName': sourceDatabaseName,
    };
  }

  factory MigrateMISyncCompleteCommandInputResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMISyncCompleteCommandInputResponse(
      sourceDatabaseName: map['sourceDatabaseName'] as String,
    );
  }
}

