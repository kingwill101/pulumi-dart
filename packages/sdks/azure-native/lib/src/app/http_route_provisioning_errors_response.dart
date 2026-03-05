// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// List of provisioning errors for a http route config object
class HttpRouteProvisioningErrorsResponse {
  /// Description or error message
  final pulumi.Input<String> message;
  /// Timestamp error occured at
  final pulumi.Input<String> timestamp;

  /// Creates a new [HttpRouteProvisioningErrorsResponse].
  /// [message] Description or error message
  /// [timestamp] Timestamp error occured at
  HttpRouteProvisioningErrorsResponse({
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'timestamp': timestamp,
    };
  }

  factory HttpRouteProvisioningErrorsResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteProvisioningErrorsResponse(
      message: pulumi.Input.fromValue(map['message'] as String),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
    );
  }
}

