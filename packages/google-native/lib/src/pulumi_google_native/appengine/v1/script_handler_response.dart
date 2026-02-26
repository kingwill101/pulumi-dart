// ignore_for_file: unused_element, unnecessary_cast

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandlerResponse {
  /// Path to the script from the application root directory.
  final String scriptPath;

  ScriptHandlerResponse({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scriptPath'] = scriptPath;
    return map;
  }

  factory ScriptHandlerResponse.fromMap(Map<String, dynamic> map) {
    return ScriptHandlerResponse(
      scriptPath: map['scriptPath'] as String,
    );
  }
}
