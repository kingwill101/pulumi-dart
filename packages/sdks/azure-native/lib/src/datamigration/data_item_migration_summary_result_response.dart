// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Basic summary of a data item migration
class DataItemMigrationSummaryResultResponse {
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
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current state of migration
  final pulumi.Input<String> state;
  /// Status message
  final pulumi.Input<String> statusMessage;

  /// Creates a new [DataItemMigrationSummaryResultResponse].
  /// [endedOn] Migration end time
  /// [errorPrefix] Wildcard string prefix to use for querying all errors of the item
  /// [itemsCompletedCount] Number of successfully completed items
  /// [itemsCount] Number of items
  /// [name] Name of the item
  /// [resultPrefix] Wildcard string prefix to use for querying all sub-tem results of the item
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  /// [statusMessage] Status message
  const DataItemMigrationSummaryResultResponse({
    required this.endedOn,
    required this.errorPrefix,
    required this.itemsCompletedCount,
    required this.itemsCount,
    required this.name,
    required this.resultPrefix,
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
      'startedOn': startedOn,
      'state': state,
      'statusMessage': statusMessage,
    };
  }

  factory DataItemMigrationSummaryResultResponse.fromMap(Map<String, dynamic> map) {
    return DataItemMigrationSummaryResultResponse(
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      errorPrefix: pulumi.Input.fromValue(map['errorPrefix'] as String),
      itemsCompletedCount: pulumi.Input.fromValue((map['itemsCompletedCount'] as num).toDouble()),
      itemsCount: pulumi.Input.fromValue((map['itemsCount'] as num).toDouble()),
      name: pulumi.Input.fromValue(map['name'] as String),
      resultPrefix: pulumi.Input.fromValue(map['resultPrefix'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}
