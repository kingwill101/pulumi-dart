// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_db_database_progress_response.dart';
import 'mongo_db_error_response.dart';

/// Describes the progress of the overall migration
class MongoDbMigrationProgressResponse {
  /// The number of document bytes copied during the Copying stage
  final pulumi.Input<double> bytesCopied;

  /// The progress of the databases in the migration. The keys are the names of the databases
  final pulumi.Input<Map<String, MongoDbDatabaseProgressResponse>>? databases;

  /// The number of documents copied during the Copying stage
  final pulumi.Input<double> documentsCopied;

  /// The elapsed time in the format [ddd.]hh:mm:ss[.fffffff] (i.e. TimeSpan format)
  final pulumi.Input<String> elapsedTime;

  /// The errors and warnings that have occurred for the current object. The keys are the error codes.
  final pulumi.Input<Map<String, MongoDbErrorResponse>> errors;

  /// The number of oplog events awaiting replay
  final pulumi.Input<double> eventsPending;

  /// The number of oplog events replayed so far
  final pulumi.Input<double> eventsReplayed;

  /// The timestamp of the last oplog event received, or null if no oplog event has been received yet
  final pulumi.Input<String>? lastEventTime;

  /// The timestamp of the last oplog event replayed, or null if no oplog event has been replayed yet
  final pulumi.Input<String>? lastReplayTime;

  /// The name of the progress object. For a collection, this is the unqualified collection name. For a database, this is the database name. For the overall migration, this is null.
  final pulumi.Input<String>? name;

  /// The qualified name of the progress object. For a collection, this is the database-qualified name. For a database, this is the database name. For the overall migration, this is null.
  final pulumi.Input<String>? qualifiedName;

  /// The type of progress object
  /// Expected value is 'Migration'.
  final pulumi.Input<String> resultType;
  final pulumi.Input<String> state;

  /// The total number of document bytes on the source at the beginning of the Copying stage, or -1 if the total size was unknown
  final pulumi.Input<double> totalBytes;

  /// The total number of documents on the source at the beginning of the Copying stage, or -1 if the total count was unknown
  final pulumi.Input<double> totalDocuments;

  /// Creates a new [MongoDbMigrationProgressResponse].
  /// [bytesCopied] The number of document bytes copied during the Copying stage
  /// [databases] The progress of the databases in the migration. The keys are the names of the databases
  /// [documentsCopied] The number of documents copied during the Copying stage
  /// [elapsedTime] The elapsed time in the format [ddd.]hh:mm:ss[.fffffff] (i.e. TimeSpan format)
  /// [errors] The errors and warnings that have occurred for the current object. The keys are the error codes.
  /// [eventsPending] The number of oplog events awaiting replay
  /// [eventsReplayed] The number of oplog events replayed so far
  /// [lastEventTime] The timestamp of the last oplog event received, or null if no oplog event has been received yet
  /// [lastReplayTime] The timestamp of the last oplog event replayed, or null if no oplog event has been replayed yet
  /// [name] The name of the progress object. For a collection, this is the unqualified collection name. For a database, this is the database name. For the overall migration, this is null.
  /// [qualifiedName] The qualified name of the progress object. For a collection, this is the database-qualified name. For a database, this is the database name. For the overall migration, this is null.
  /// [resultType] The type of progress object
  /// [state] Required.
  /// [totalBytes] The total number of document bytes on the source at the beginning of the Copying stage, or -1 if the total size was unknown
  /// [totalDocuments] The total number of documents on the source at the beginning of the Copying stage, or -1 if the total count was unknown
  MongoDbMigrationProgressResponse({
    required this.bytesCopied,
    this.databases,
    required this.documentsCopied,
    required this.elapsedTime,
    required this.errors,
    required this.eventsPending,
    required this.eventsReplayed,
    this.lastEventTime,
    this.lastReplayTime,
    this.name,
    this.qualifiedName,
    required this.resultType,
    required this.state,
    required this.totalBytes,
    required this.totalDocuments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytesCopied': bytesCopied,
      'databases':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, MongoDbDatabaseProgressResponse>,
            Map<String, Map<String, dynamic>>
          >(
            databases,
            (value) =>
                pulumi.Input.encodeMapValues<
                  MongoDbDatabaseProgressResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'documentsCopied': documentsCopied,
      'elapsedTime': elapsedTime,
      'errors':
          pulumi.Input.mapInputValue<
            Map<String, MongoDbErrorResponse>,
            Map<String, Map<String, dynamic>>
          >(
            errors,
            (value) =>
                pulumi.Input.encodeMapValues<
                  MongoDbErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eventsPending': eventsPending,
      'eventsReplayed': eventsReplayed,
      'lastEventTime': ?lastEventTime,
      'lastReplayTime': ?lastReplayTime,
      'name': ?name,
      'qualifiedName': ?qualifiedName,
      'resultType': resultType,
      'state': state,
      'totalBytes': totalBytes,
      'totalDocuments': totalDocuments,
    };
  }

  factory MongoDbMigrationProgressResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbMigrationProgressResponse(
      bytesCopied: pulumi.Input.fromValue(map['bytesCopied'] as double),
      databases: (() {
        final guardedValue = map['databases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<MongoDbDatabaseProgressResponse>(
            guardedValue,
            (value) => MongoDbDatabaseProgressResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      documentsCopied: pulumi.Input.fromValue(map['documentsCopied'] as double),
      elapsedTime: pulumi.Input.fromValue(map['elapsedTime'] as String),
      errors: pulumi.Input.fromValue(
        pulumi.Input.decodeMapValues<MongoDbErrorResponse>(
          map['errors']!,
          (value) => MongoDbErrorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      eventsPending: pulumi.Input.fromValue(map['eventsPending'] as double),
      eventsReplayed: pulumi.Input.fromValue(map['eventsReplayed'] as double),
      lastEventTime: (() {
        final guardedValue = map['lastEventTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastReplayTime: (() {
        final guardedValue = map['lastReplayTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      qualifiedName: (() {
        final guardedValue = map['qualifiedName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      totalBytes: pulumi.Input.fromValue(map['totalBytes'] as double),
      totalDocuments: pulumi.Input.fromValue(map['totalDocuments'] as double),
    );
  }
}
