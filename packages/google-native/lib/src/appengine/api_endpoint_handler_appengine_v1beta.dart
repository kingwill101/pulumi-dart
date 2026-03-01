// ignore_for_file: unused_element, unnecessary_cast

/// Uses Google Cloud Endpoints to handle requests.
class ApiEndpointHandlerAppengineV1beta {
  /// Path to the script from the application root directory.
  final String? scriptPath;

  /// Creates a new [ApiEndpointHandlerAppengineV1beta].
  /// [scriptPath] Path to the script from the application root directory.
  ApiEndpointHandlerAppengineV1beta({this.scriptPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scriptPath': ?scriptPath};
  }

  factory ApiEndpointHandlerAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ApiEndpointHandlerAppengineV1beta(
      scriptPath: map['scriptPath'] == null
          ? null
          : map['scriptPath'] as String,
    );
  }
}
