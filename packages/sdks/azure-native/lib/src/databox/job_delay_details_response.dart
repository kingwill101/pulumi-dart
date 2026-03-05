// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Job Delay Notification details
class JobDelayDetailsResponse {
  /// Description of the delay.
  final pulumi.Input<String> description;
  /// Delay Error code
  final pulumi.Input<String> errorCode;
  /// Timestamp when the delay notification was resolved.
  final pulumi.Input<String> resolutionTime;
  /// Timestamp when the delay notification was created.
  final pulumi.Input<String> startTime;
  /// Status of notification
  final pulumi.Input<String> status;

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
      description: pulumi.Input.fromValue(map['description'] as String),
      errorCode: pulumi.Input.fromValue(map['errorCode'] as String),
      resolutionTime: pulumi.Input.fromValue(map['resolutionTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

