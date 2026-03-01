// ignore_for_file: unused_element, unnecessary_cast


/// The status of the archive
class AmlFilesystemArchiveResponseStatus {
  /// Server-defined error code for the archive operation
  final String errorCode;
  /// Server-defined error message for the archive operation
  final String errorMessage;
  /// The time of the last completed archive operation
  final String lastCompletionTime;
  /// The time the latest archive operation started
  final String lastStartedTime;
  /// The completion percentage of the archive operation
  final int percentComplete;
  /// The state of the archive operation
  final String state;

  /// Creates a new [AmlFilesystemArchiveResponseStatus].
  /// [errorCode] Server-defined error code for the archive operation
  /// [errorMessage] Server-defined error message for the archive operation
  /// [lastCompletionTime] The time of the last completed archive operation
  /// [lastStartedTime] The time the latest archive operation started
  /// [percentComplete] The completion percentage of the archive operation
  /// [state] The state of the archive operation
  AmlFilesystemArchiveResponseStatus({
    required this.errorCode,
    required this.errorMessage,
    required this.lastCompletionTime,
    required this.lastStartedTime,
    required this.percentComplete,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
      'lastCompletionTime': lastCompletionTime,
      'lastStartedTime': lastStartedTime,
      'percentComplete': percentComplete,
      'state': state,
    };
  }

  factory AmlFilesystemArchiveResponseStatus.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemArchiveResponseStatus(
      errorCode: map['errorCode'] as String,
      errorMessage: map['errorMessage'] as String,
      lastCompletionTime: map['lastCompletionTime'] as String,
      lastStartedTime: map['lastStartedTime'] as String,
      percentComplete: map['percentComplete'] as int,
      state: map['state'] as String,
    );
  }
}

