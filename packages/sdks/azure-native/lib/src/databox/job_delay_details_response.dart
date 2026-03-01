// ignore_for_file: unused_element, unnecessary_cast


/// Job Delay Notification details
class JobDelayDetailsResponse {
  /// Description of the delay.
  final String description;
  /// Delay Error code
  final String errorCode;
  /// Timestamp when the delay notification was resolved.
  final String resolutionTime;
  /// Timestamp when the delay notification was created.
  final String startTime;
  /// Status of notification
  final String status;

  /// Creates a new [JobDelayDetailsResponse].
  /// [description] Description of the delay.
  /// [errorCode] Delay Error code
  /// [resolutionTime] Timestamp when the delay notification was resolved.
  /// [startTime] Timestamp when the delay notification was created.
  /// [status] Status of notification
  JobDelayDetailsResponse({
    required this.description,
    required this.errorCode,
    required this.resolutionTime,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'errorCode': errorCode,
      'resolutionTime': resolutionTime,
      'startTime': startTime,
      'status': status,
    };
  }

  factory JobDelayDetailsResponse.fromMap(Map<String, dynamic> map) {
    return JobDelayDetailsResponse(
      description: map['description'] as String,
      errorCode: map['errorCode'] as String,
      resolutionTime: map['resolutionTime'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}

