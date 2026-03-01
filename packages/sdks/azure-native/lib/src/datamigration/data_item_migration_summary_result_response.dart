// ignore_for_file: unused_element, unnecessary_cast


/// Basic summary of a data item migration
class DataItemMigrationSummaryResultResponse {
  /// Migration end time
  final String endedOn;
  /// Wildcard string prefix to use for querying all errors of the item
  final String errorPrefix;
  /// Number of successfully completed items
  final double itemsCompletedCount;
  /// Number of items
  final double itemsCount;
  /// Name of the item
  final String name;
  /// Wildcard string prefix to use for querying all sub-tem results of the item
  final String resultPrefix;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;
  /// Status message
  final String statusMessage;

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
  DataItemMigrationSummaryResultResponse({
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
      endedOn: map['endedOn'] as String,
      errorPrefix: map['errorPrefix'] as String,
      itemsCompletedCount: map['itemsCompletedCount'] as double,
      itemsCount: map['itemsCount'] as double,
      name: map['name'] as String,
      resultPrefix: map['resultPrefix'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}

