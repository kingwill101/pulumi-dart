// ignore_for_file: unused_element, unnecessary_cast

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandlerResponse {
  /// Path to the script from the application root directory.
  final String scriptPath;

  /// Creates a new [ApiEndpointHandlerResponse].
  /// [scriptPath] Path to the script from the application root directory.
  ApiEndpointHandlerResponse({required this.scriptPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scriptPath': scriptPath};
  }

  factory ApiEndpointHandlerResponse.fromMap(Map<String, dynamic> map) {
    return ApiEndpointHandlerResponse(scriptPath: map['scriptPath'] as String);
  }
}
