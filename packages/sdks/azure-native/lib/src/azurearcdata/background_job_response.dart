// ignore_for_file: unused_element, unnecessary_cast


/// The background job details.
class BackgroundJobResponse {
  /// The end time of the background job.
  final String? endTime;
  /// The execution state of the background job.
  final String? executionState;
  /// The last execution status of the background job.
  final String? lastExecutionStatus;
  /// The last execution time of the background job.
  final String? lastExecutionTime;
  /// The start time of the background job.
  final String? startTime;
  /// The state of the background job.
  final String? state;

  /// Creates a new [BackgroundJobResponse].
  /// [endTime] The end time of the background job.
  /// [executionState] The execution state of the background job.
  /// [lastExecutionStatus] The last execution status of the background job.
  /// [lastExecutionTime] The last execution time of the background job.
  /// [startTime] The start time of the background job.
  /// [state] The state of the background job.
  BackgroundJobResponse({
    this.endTime,
    this.executionState,
    this.lastExecutionStatus,
    this.lastExecutionTime,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'executionState': ?executionState,
      'lastExecutionStatus': ?lastExecutionStatus,
      'lastExecutionTime': ?lastExecutionTime,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory BackgroundJobResponse.fromMap(Map<String, dynamic> map) {
    return BackgroundJobResponse(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      executionState: map['executionState'] == null ? null : map['executionState'] as String,
      lastExecutionStatus: map['lastExecutionStatus'] == null ? null : map['lastExecutionStatus'] as String,
      lastExecutionTime: map['lastExecutionTime'] == null ? null : map['lastExecutionTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

