// ignore_for_file: unused_element, unnecessary_cast


class FlexibleAppVersionHandlerScript {
  /// Path to the script from the application root directory.
  final String scriptPath;

  /// Creates a new [FlexibleAppVersionHandlerScript].
  /// [scriptPath] Path to the script from the application root directory.
  FlexibleAppVersionHandlerScript({
    required this.scriptPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scriptPath': scriptPath,
    };
  }

  factory FlexibleAppVersionHandlerScript.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionHandlerScript(
      scriptPath: map['scriptPath'] as String,
    );
  }
}

