// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detailed status of collection migration.
class MongoMigrationProgressDetailsResponse {
  /// Migration duration
  final pulumi.Input<int> durationInSeconds;
  /// Migration Error
  final pulumi.Input<String> migrationError;
  /// Migration Status
  final pulumi.Input<String> migrationStatus;
  /// Processed Document Count
  final pulumi.Input<double> processedDocumentCount;
  /// Source Document Count
  final pulumi.Input<double> sourceDocumentCount;

  /// Creates a new [MongoMigrationProgressDetailsResponse].
  /// [durationInSeconds] Migration duration
  /// [migrationError] Migration Error
  /// [migrationStatus] Migration Status
  /// [processedDocumentCount] Processed Document Count
  /// [sourceDocumentCount] Source Document Count
  const MongoMigrationProgressDetailsResponse({
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
      durationInSeconds: pulumi.Input.fromValue(map['durationInSeconds'] as int),
      migrationError: pulumi.Input.fromValue(map['migrationError'] as String),
      migrationStatus: pulumi.Input.fromValue(map['migrationStatus'] as String),
      processedDocumentCount: pulumi.Input.fromValue(map['processedDocumentCount'] as double),
      sourceDocumentCount: pulumi.Input.fromValue(map['sourceDocumentCount'] as double),
    );
  }
}
