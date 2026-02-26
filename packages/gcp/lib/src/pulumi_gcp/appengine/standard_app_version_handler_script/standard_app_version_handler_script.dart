// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionHandlerScript {
  /// Path to the script from the application root directory.
  final String scriptPath;

  StandardAppVersionHandlerScript({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scriptPath'] = scriptPath;
    return map;
  }

  factory StandardAppVersionHandlerScript.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionHandlerScript(
      scriptPath: map['scriptPath'] as String,
    );
  }
}
