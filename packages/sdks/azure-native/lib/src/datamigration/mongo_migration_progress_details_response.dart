// ignore_for_file: unused_element, unnecessary_cast


/// Detailed status of collection migration.
class MongoMigrationProgressDetailsResponse {
  /// Migration duration
  final int durationInSeconds;
  /// Migration Error
  final String migrationError;
  /// Migration Status
  final String migrationStatus;
  /// Processed Document Count
  final double processedDocumentCount;
  /// Source Document Count
  final double sourceDocumentCount;

  /// Creates a new [MongoMigrationProgressDetailsResponse].
  /// [durationInSeconds] Migration duration
  /// [migrationError] Migration Error
  /// [migrationStatus] Migration Status
  /// [processedDocumentCount] Processed Document Count
  /// [sourceDocumentCount] Source Document Count
  MongoMigrationProgressDetailsResponse({
    required this.durationInSeconds,
    required this.migrationError,
    required this.migrationStatus,
    required this.processedDocumentCount,
    required this.sourceDocumentCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationInSeconds': durationInSeconds,
      'migrationError': migrationError,
      'migrationStatus': migrationStatus,
      'processedDocumentCount': processedDocumentCount,
      'sourceDocumentCount': sourceDocumentCount,
    };
  }

  factory MongoMigrationProgressDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MongoMigrationProgressDetailsResponse(
      durationInSeconds: map['durationInSeconds'] as int,
      migrationError: map['migrationError'] as String,
      migrationStatus: map['migrationStatus'] as String,
      processedDocumentCount: map['processedDocumentCount'] as double,
      sourceDocumentCount: map['sourceDocumentCount'] as double,
    );
  }
}

