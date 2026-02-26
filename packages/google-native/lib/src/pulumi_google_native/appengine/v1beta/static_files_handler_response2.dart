// ignore_for_file: unused_element, unnecessary_cast

/// Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.
class StaticFilesHandlerResponse2 {
  /// Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged against both your code and static data storage resource quotas.
  final bool applicationReadable;

  /// Time a static file served by this handler should be cached by web proxies and browsers.
  final String expiration;

  /// HTTP headers to use for all responses from these URLs.
  final Map<String, String> httpHeaders;

  /// MIME type used to serve all files served by this handler.Defaults to file-specific MIME types, which are derived from each file's filename extension.
  final String mimeType;

  /// Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
  final String path;

  /// Whether this handler should match the request if the file referenced by the handler does not exist.
  final bool requireMatchingFile;

  /// Regular expression that matches the file paths for all files that should be referenced by this handler.
  final String uploadPathRegex;

  StaticFilesHandlerResponse2({
    required this.applicationReadable,
    required this.expiration,
    required this.httpHeaders,
    required this.mimeType,
    required this.path,
    required this.requireMatchingFile,
    required this.uploadPathRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationReadable'] = applicationReadable;
    map['expiration'] = expiration;
    map['httpHeaders'] = httpHeaders;
    map['mimeType'] = mimeType;
    map['path'] = path;
    map['requireMatchingFile'] = requireMatchingFile;
    map['uploadPathRegex'] = uploadPathRegex;
    return map;
  }

  factory StaticFilesHandlerResponse2.fromMap(Map<String, dynamic> map) {
    return StaticFilesHandlerResponse2(
      applicationReadable: map['applicationReadable'] as bool,
      expiration: map['expiration'] as String,
      httpHeaders: (map['httpHeaders'] as Map).cast<String, String>(),
      mimeType: map['mimeType'] as String,
      path: map['path'] as String,
      requireMatchingFile: map['requireMatchingFile'] as bool,
      uploadPathRegex: map['uploadPathRegex'] as String,
    );
  }
}
