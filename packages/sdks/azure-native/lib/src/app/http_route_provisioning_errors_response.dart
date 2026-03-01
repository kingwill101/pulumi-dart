// ignore_for_file: unused_element, unnecessary_cast


/// List of provisioning errors for a http route config object
class HttpRouteProvisioningErrorsResponse {
  /// Description or error message
  final String message;
  /// Timestamp error occured at
  final String timestamp;

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
      message: map['message'] as String,
      timestamp: map['timestamp'] as String,
    );
  }
}

