// ignore_for_file: unused_element, unnecessary_cast

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandlerResponse {
  /// Path to the script from the application root directory.
  final String scriptPath;

  ApiEndpointHandlerResponse({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scriptPath'] = scriptPath;
    return map;
  }

  factory ApiEndpointHandlerResponse.fromMap(Map<String, dynamic> map) {
    return ApiEndpointHandlerResponse(
      scriptPath: map['scriptPath'] as String,
    );
  }
}
