// ignore_for_file: unused_element, unnecessary_cast

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandlerResponse2 {
  /// Path to the script from the application root directory.
  final String scriptPath;

  ApiEndpointHandlerResponse2({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scriptPath'] = scriptPath;
    return map;
  }

  factory ApiEndpointHandlerResponse2.fromMap(Map<String, dynamic> map) {
    return ApiEndpointHandlerResponse2(
      scriptPath: map['scriptPath'] as String,
    );
  }
}
