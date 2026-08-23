// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrateSqlServerSqlDbTaskOutputTableLevelResponse {
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Wildcard string prefix to use for querying all errors of the item
  final pulumi.Input<String> errorPrefix;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Number of successfully completed items
  final pulumi.Input<double> itemsCompletedCount;
  /// Number of items
  final pulumi.Input<double> itemsCount;
  /// Name of the item
  final pulumi.Input<String> objectName;
  /// Wildcard string prefix to use for querying all sub-tem results of the item
  final pulumi.Input<String> resultPrefix;
  /// Result type
  /// Expected value is 'TableLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current state of migration
  final pulumi.Input<String> state;
  /// Status message
  final pulumi.Input<String> statusMessage;

  /// Creates a new [MigrateSqlServerSqlDbTaskOutputTableLevelResponse].
  /// [endedOn] Migration end time
  /// [errorPrefix] Wildcard string prefix to use for querying all errors of the item
  /// [id] Result identifier
  /// [itemsCompletedCount] Number of successfully completed items
  /// [itemsCount] Number of items
  /// [objectName] Name of the item
  /// [resultPrefix] Wildcard string prefix to use for querying all sub-tem results of the item
  /// [resultType] Result type
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  /// [statusMessage] Status message
  const MigrateSqlServerSqlDbTaskOutputTableLevelResponse({
    required this.endedOn,
    required this.errorPrefix,
    required this.id,
    required this.itemsCompletedCount,
    required this.itemsCount,
    required this.objectName,
    required this.resultPrefix,
    required this.resultType,
    required this.startedOn,
    required this.state,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'errorPrefix': errorPrefix,
      'id': id,
      'itemsCompletedCount': itemsCompletedCount,
      'itemsCount': itemsCount,
      'objectName': objectName,
      'resultPrefix': resultPrefix,
      'resultType': resultType,
      'startedOn': startedOn,
      'state': state,
      'statusMessage': statusMessage,
    };
  }

  factory MigrateSqlServerSqlDbTaskOutputTableLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbTaskOutputTableLevelResponse(
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      errorPrefix: pulumi.Input.fromValue(map['errorPrefix'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      itemsCompletedCount: pulumi.Input.fromValue(map['itemsCompletedCount'] as double),
      itemsCount: pulumi.Input.fromValue(map['itemsCount'] as double),
      objectName: pulumi.Input.fromValue(map['objectName'] as String),
      resultPrefix: pulumi.Input.fromValue(map['resultPrefix'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
    );
  }
}
