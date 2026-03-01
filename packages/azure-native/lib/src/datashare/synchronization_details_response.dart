// ignore_for_file: unused_element, unnecessary_cast


/// Synchronization details at data set level
class SynchronizationDetailsResponse {
  /// Id of data set
  final String dataSetId;
  /// Type of the data set
  final String dataSetType;
  /// Duration of data set level copy
  final int durationMs;
  /// End time of data set level copy
  final String endTime;
  /// The number of files read from the source data set
  final double filesRead;
  /// The number of files written into the sink data set
  final double filesWritten;
  /// Error message if any
  final String message;
  /// Name of the data set
  final String name;
  /// The number of files copied into the sink data set
  final double rowsCopied;
  /// The number of rows read from the source data set.
  final double rowsRead;
  /// The size of the data read from the source data set in bytes
  final double sizeRead;
  /// The size of the data written into the sink data set in bytes
  final double sizeWritten;
  /// Start time of data set level copy
  final String startTime;
  /// Raw Status
  final String status;
  /// The vCore units consumed for the data set synchronization
  final double vCore;

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
  SynchronizationDetailsResponse({
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
      dataSetId: map['dataSetId'] as String,
      dataSetType: map['dataSetType'] as String,
      durationMs: map['durationMs'] as int,
      endTime: map['endTime'] as String,
      filesRead: map['filesRead'] as double,
      filesWritten: map['filesWritten'] as double,
      message: map['message'] as String,
      name: map['name'] as String,
      rowsCopied: map['rowsCopied'] as double,
      rowsRead: map['rowsRead'] as double,
      sizeRead: map['sizeRead'] as double,
      sizeWritten: map['sizeWritten'] as double,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      vCore: map['vCore'] as double,
    );
  }
}

