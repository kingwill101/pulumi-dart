// ignore_for_file: unused_element, unnecessary_cast

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandler {
  /// Path to the script from the application root directory.
  final String? scriptPath;

  /// Creates a new [ScriptHandler].
  /// [scriptPath] Path to the script from the application root directory.
  ScriptHandler({
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

  factory ScriptHandler.fromMap(Map<String, dynamic> map) {
    return ScriptHandler(
      scriptPath:
          map['scriptPath'] == null ? null : map['scriptPath'] as String,
    );
  }
}
