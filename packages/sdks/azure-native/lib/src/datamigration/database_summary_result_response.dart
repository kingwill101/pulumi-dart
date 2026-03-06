// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Summary of database results in the migration
class DatabaseSummaryResultResponse {
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Wildcard string prefix to use for querying all errors of the item
  final pulumi.Input<String> errorPrefix;
  /// Number of successfully completed items
  final pulumi.Input<double> itemsCompletedCount;
  /// Number of items
  final pulumi.Input<double> itemsCount;
  /// Name of the item
  final pulumi.Input<String> name;
  /// Wildcard string prefix to use for querying all sub-tem results of the item
  final pulumi.Input<String> resultPrefix;
  /// Size of the database in megabytes
  final pulumi.Input<double> sizeMB;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current state of migration
  final pulumi.Input<String> state;
  /// Status message
  final pulumi.Input<String> statusMessage;

  /// Creates a new [DatabaseSummaryResultResponse].
  /// [endedOn] Migration end time
  /// [errorPrefix] Wildcard string prefix to use for querying all errors of the item
  /// [itemsCompletedCount] Number of successfully completed items
  /// [itemsCount] Number of items
  /// [name] Name of the item
  /// [resultPrefix] Wildcard string prefix to use for querying all sub-tem results of the item
  /// [sizeMB] Size of the database in megabytes
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  /// [statusMessage] Status message
  const DatabaseSummaryResultResponse({
    required this.endedOn,
    required this.errorPrefix,
    required this.itemsCompletedCount,
    required this.itemsCount,
    required this.name,
    required this.resultPrefix,
    required this.sizeMB,
    required this.startedOn,
    required this.state,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'errorPrefix': errorPrefix,
      'itemsCompletedCount': itemsCompletedCount,
      'itemsCount': itemsCount,
      'name': name,
      'resultPrefix': resultPrefix,
      'sizeMB': sizeMB,
      'startedOn': startedOn,
      'state': state,
      'statusMessage': statusMessage,
    };
  }

  factory DatabaseSummaryResultResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseSummaryResultResponse(
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      errorPrefix: pulumi.Input.fromValue(map['errorPrefix'] as String),
      itemsCompletedCount: pulumi.Input.fromValue(map['itemsCompletedCount'] as double),
      itemsCount: pulumi.Input.fromValue(map['itemsCount'] as double),
      name: pulumi.Input.fromValue(map['name'] as String),
      resultPrefix: pulumi.Input.fromValue(map['resultPrefix'] as String),
      sizeMB: pulumi.Input.fromValue(map['sizeMB'] as double),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}

