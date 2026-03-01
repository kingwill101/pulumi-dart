// ignore_for_file: unused_element, unnecessary_cast


/// Project Database Details
class DatabaseInfoResponse {
  /// Name of the database
  final String sourceDatabaseName;

  /// Creates a new [DatabaseInfoResponse].
  /// [sourceDatabaseName] Name of the database
  DatabaseInfoResponse({
    required this.sourceDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDatabaseName': sourceDatabaseName,
    };
  }

  factory DatabaseInfoResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseInfoResponse(
      sourceDatabaseName: map['sourceDatabaseName'] as String,
    );
  }
}

