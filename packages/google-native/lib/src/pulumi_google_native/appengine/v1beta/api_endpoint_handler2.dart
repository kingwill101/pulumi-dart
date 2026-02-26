// ignore_for_file: unused_element, unnecessary_cast

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandler2 {
  /// Path to the script from the application root directory.
  final String? scriptPath;

  ApiEndpointHandler2({
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

  factory ApiEndpointHandler2.fromMap(Map<String, dynamic> map) {
    return ApiEndpointHandler2(
      scriptPath:
          map['scriptPath'] == null ? null : map['scriptPath'] as String,
    );
  }
}
