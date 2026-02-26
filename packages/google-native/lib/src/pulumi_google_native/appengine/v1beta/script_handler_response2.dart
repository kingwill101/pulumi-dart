// ignore_for_file: unused_element, unnecessary_cast

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandlerResponse2 {
  /// Path to the script from the application root directory.
  final String scriptPath;

  ScriptHandlerResponse2({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scriptPath'] = scriptPath;
    return map;
  }

  factory ScriptHandlerResponse2.fromMap(Map<String, dynamic> map) {
    return ScriptHandlerResponse2(
      scriptPath: map['scriptPath'] as String,
    );
  }
}
