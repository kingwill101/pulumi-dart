// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigHandlerMapping {
  /// The command-line arguments to be passed to the script processor.
  final String arguments;
  /// The extension to be handled by the specified FastCGI application.
  final String extension;
  /// The absolute path to the FastCGI application.
  final String scriptProcessorPath;

  /// Creates a new [GetWindowsWebAppSiteConfigHandlerMapping].
  /// [arguments] The command-line arguments to be passed to the script processor.
  /// [extension] The extension to be handled by the specified FastCGI application.
  /// [scriptProcessorPath] The absolute path to the FastCGI application.
  GetWindowsWebAppSiteConfigHandlerMapping({
    required this.arguments,
    required this.extension,
    required this.scriptProcessorPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': arguments,
      'extension': extension,
      'scriptProcessorPath': scriptProcessorPath,
    };
  }

  factory GetWindowsWebAppSiteConfigHandlerMapping.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigHandlerMapping(
      arguments: map['arguments'] as String,
      extension: map['extension'] as String,
      scriptProcessorPath: map['scriptProcessorPath'] as String,
    );
  }
}

