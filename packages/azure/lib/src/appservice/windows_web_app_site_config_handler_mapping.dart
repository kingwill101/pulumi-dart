// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSiteConfigHandlerMapping {
  /// Specifies the command-line arguments to be passed to the script processor.
  final String? arguments;
  /// Specifies which extension to be handled by the specified FastCGI application.
  final String extension;
  /// Specifies the absolute path to the FastCGI application.
  final String scriptProcessorPath;

  /// Creates a new [WindowsWebAppSiteConfigHandlerMapping].
  /// [arguments] Specifies the command-line arguments to be passed to the script processor.
  /// [extension] Specifies which extension to be handled by the specified FastCGI application.
  /// [scriptProcessorPath] Specifies the absolute path to the FastCGI application.
  WindowsWebAppSiteConfigHandlerMapping({
    this.arguments,
    required this.extension,
    required this.scriptProcessorPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'extension': extension,
      'scriptProcessorPath': scriptProcessorPath,
    };
  }

  factory WindowsWebAppSiteConfigHandlerMapping.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigHandlerMapping(
      arguments: map['arguments'] == null ? null : map['arguments'] as String,
      extension: map['extension'] as String,
      scriptProcessorPath: map['scriptProcessorPath'] as String,
    );
  }
}

