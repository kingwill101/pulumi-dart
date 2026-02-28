// ignore_for_file: unused_element, unnecessary_cast

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandler {
  /// Path to the script from the application root directory.
  final String? scriptPath;

  /// Creates a new [ApiEndpointHandler].
  /// [scriptPath] Path to the script from the application root directory.
  ApiEndpointHandler({
    this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scriptPathValue = scriptPath;
    if (scriptPathValue != null) {
      map['scriptPath'] = scriptPathValue;
    }
    return map;
  }

  factory ApiEndpointHandler.fromMap(Map<String, dynamic> map) {
    return ApiEndpointHandler(
      scriptPath:
          map['scriptPath'] == null ? null : map['scriptPath'] as String,
    );
  }
}
