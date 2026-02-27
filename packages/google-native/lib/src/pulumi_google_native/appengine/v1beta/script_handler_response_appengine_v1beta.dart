// ignore_for_file: unused_element, unnecessary_cast

/// Executes a script to handle the request that matches the URL pattern.
class ScriptHandlerResponseAppengineV1beta {
  /// Path to the script from the application root directory.
  final String scriptPath;

  ScriptHandlerResponseAppengineV1beta({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scriptPath'] = scriptPath;
    return map;
  }

  factory ScriptHandlerResponseAppengineV1beta.fromMap(
      Map<String, dynamic> map) {
    return ScriptHandlerResponseAppengineV1beta(
      scriptPath: map['scriptPath'] as String,
    );
  }
}
