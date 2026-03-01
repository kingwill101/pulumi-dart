// ignore_for_file: unused_element, unnecessary_cast


/// Project Database Details
class DatabaseInfo {
  /// Name of the database
  final String sourceDatabaseName;

  /// Creates a new [DatabaseInfo].
  /// [sourceDatabaseName] Name of the database
  DatabaseInfo({
    required this.sourceDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDatabaseName': sourceDatabaseName,
    };
  }

  factory DatabaseInfo.fromMap(Map<String, dynamic> map) {
    return DatabaseInfo(
      sourceDatabaseName: map['sourceDatabaseName'] as String,
    );
  }
}

