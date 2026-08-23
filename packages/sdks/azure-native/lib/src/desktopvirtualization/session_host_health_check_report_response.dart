// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_host_health_check_failure_details_response.dart';

/// The report for session host information.
class SessionHostHealthCheckReportResponse {
  /// Additional detailed information on the failure.
  final pulumi.Input<SessionHostHealthCheckFailureDetailsResponse> additionalFailureDetails;
  /// Represents the name of the health check operation performed.
  final pulumi.Input<String> healthCheckName;
  /// Represents the Health state of the health check we performed.
  final pulumi.Input<String> healthCheckResult;

  /// Creates a new [SessionHostHealthCheckReportResponse].
  /// [additionalFailureDetails] Additional detailed information on the failure.
  /// [healthCheckName] Represents the name of the health check operation performed.
  /// [healthCheckResult] Represents the Health state of the health check we performed.
  const SessionHostHealthCheckReportResponse({
    required this.additionalFailureDetails,
    required this.healthCheckName,
    required this.healthCheckResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalFailureDetails': pulumi.Input.mapInputValue<SessionHostHealthCheckFailureDetailsResponse, Map<String, dynamic>>(additionalFailureDetails, (value) => value.toMap()),
      'healthCheckName': healthCheckName,
      'healthCheckResult': healthCheckResult,
    };
  }

  factory SessionHostHealthCheckReportResponse.fromMap(Map<String, dynamic> map) {
    return SessionHostHealthCheckReportResponse(
      additionalFailureDetails: pulumi.Input.fromValue(SessionHostHealthCheckFailureDetailsResponse.fromMap((map['additionalFailureDetails']! as Map).cast<String, dynamic>())),
      healthCheckName: pulumi.Input.fromValue(map['healthCheckName'] as String),
      healthCheckResult: pulumi.Input.fromValue(map['healthCheckResult'] as String),
    );
  }
}
