// ignore_for_file: unused_element, unnecessary_cast


/// Summary of database results in the migration
class DatabaseSummaryResultResponse {
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
  /// Size of the database in megabytes
  final double sizeMB;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;
  /// Status message
  final String statusMessage;

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
  DatabaseSummaryResultResponse({
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
      endedOn: map['endedOn'] as String,
      errorPrefix: map['errorPrefix'] as String,
      itemsCompletedCount: map['itemsCompletedCount'] as double,
      itemsCount: map['itemsCount'] as double,
      name: map['name'] as String,
      resultPrefix: map['resultPrefix'] as String,
      sizeMB: map['sizeMB'] as double,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}

