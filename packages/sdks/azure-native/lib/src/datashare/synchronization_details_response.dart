// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Synchronization details at data set level
class SynchronizationDetailsResponse {
  /// Id of data set
  final pulumi.Input<String> dataSetId;
  /// Type of the data set
  final pulumi.Input<String> dataSetType;
  /// Duration of data set level copy
  final pulumi.Input<int> durationMs;
  /// End time of data set level copy
  final pulumi.Input<String> endTime;
  /// The number of files read from the source data set
  final pulumi.Input<double> filesRead;
  /// The number of files written into the sink data set
  final pulumi.Input<double> filesWritten;
  /// Error message if any
  final pulumi.Input<String> message;
  /// Name of the data set
  final pulumi.Input<String> name;
  /// The number of files copied into the sink data set
  final pulumi.Input<double> rowsCopied;
  /// The number of rows read from the source data set.
  final pulumi.Input<double> rowsRead;
  /// The size of the data read from the source data set in bytes
  final pulumi.Input<double> sizeRead;
  /// The size of the data written into the sink data set in bytes
  final pulumi.Input<double> sizeWritten;
  /// Start time of data set level copy
  final pulumi.Input<String> startTime;
  /// Raw Status
  final pulumi.Input<String> status;
  /// The vCore units consumed for the data set synchronization
  final pulumi.Input<double> vCore;

  /// Creates a new [SynchronizationDetailsResponse].
  /// [dataSetId] Id of data set
  /// [dataSetType] Type of the data set
  /// [durationMs] Duration of data set level copy
  /// [endTime] End time of data set level copy
  /// [filesRead] The number of files read from the source data set
  /// [filesWritten] The number of files written into the sink data set
  /// [message] Error message if any
  /// [name] Name of the data set
  /// [rowsCopied] The number of files copied into the sink data set
  /// [rowsRead] The number of rows read from the source data set.
  /// [sizeRead] The size of the data read from the source data set in bytes
  /// [sizeWritten] The size of the data written into the sink data set in bytes
  /// [startTime] Start time of data set level copy
  /// [status] Raw Status
  /// [vCore] The vCore units consumed for the data set synchronization
  const SynchronizationDetailsResponse({
    required this.dataSetId,
    required this.dataSetType,
    required this.durationMs,
    required this.endTime,
    required this.filesRead,
    required this.filesWritten,
    required this.message,
    required this.name,
    required this.rowsCopied,
    required this.rowsRead,
    required this.sizeRead,
    required this.sizeWritten,
    required this.startTime,
    required this.status,
    required this.vCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSetId': dataSetId,
      'dataSetType': dataSetType,
      'durationMs': durationMs,
      'endTime': endTime,
      'filesRead': filesRead,
      'filesWritten': filesWritten,
      'message': message,
      'name': name,
      'rowsCopied': rowsCopied,
      'rowsRead': rowsRead,
      'sizeRead': sizeRead,
      'sizeWritten': sizeWritten,
      'startTime': startTime,
      'status': status,
      'vCore': vCore,
    };
  }

  factory SynchronizationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SynchronizationDetailsResponse(
      dataSetId: pulumi.Input.fromValue(map['dataSetId'] as String),
      dataSetType: pulumi.Input.fromValue(map['dataSetType'] as String),
      durationMs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['durationMs'])),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      filesRead: pulumi.Input.fromValue((map['filesRead'] as num).toDouble()),
      filesWritten: pulumi.Input.fromValue((map['filesWritten'] as num).toDouble()),
      message: pulumi.Input.fromValue(map['message'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      rowsCopied: pulumi.Input.fromValue((map['rowsCopied'] as num).toDouble()),
      rowsRead: pulumi.Input.fromValue((map['rowsRead'] as num).toDouble()),
      sizeRead: pulumi.Input.fromValue((map['sizeRead'] as num).toDouble()),
      sizeWritten: pulumi.Input.fromValue((map['sizeWritten'] as num).toDouble()),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vCore: pulumi.Input.fromValue((map['vCore'] as num).toDouble()),
    );
  }
}
