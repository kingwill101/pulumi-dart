// ignore_for_file: unused_element, unnecessary_cast


class StandardAppVersionHandlerStaticFiles {
  /// Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as
  /// static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged
  /// against both your code and static data storage resource quotas.
  final bool? applicationReadable;
  /// Time a static file served by this handler should be cached by web proxies and browsers.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example "3.5s".
  final String? expiration;
  /// HTTP headers to use for all responses from these URLs.
  /// An object containing a list of "key:value" value pairs.".
  final Map<String, String>? httpHeaders;
  /// MIME type used to serve all files served by this handler.
  /// Defaults to file-specific MIME types, which are derived from each file's filename extension.
  final String? mimeType;
  /// Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
  final String? path;
  /// Whether this handler should match the request if the file referenced by the handler does not exist.
  final bool? requireMatchingFile;
  /// Regular expression that matches the file paths for all files that should be referenced by this handler.
  final String? uploadPathRegex;

  /// Creates a new [StandardAppVersionHandlerStaticFiles].
  /// [applicationReadable] Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as
  /// [expiration] Time a static file served by this handler should be cached by web proxies and browsers.
  /// [httpHeaders] HTTP headers to use for all responses from these URLs.
  /// [mimeType] MIME type used to serve all files served by this handler.
  /// [path] Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.
  /// [requireMatchingFile] Whether this handler should match the request if the file referenced by the handler does not exist.
  /// [uploadPathRegex] Regular expression that matches the file paths for all files that should be referenced by this handler.
  StandardAppVersionHandlerStaticFiles({
    this.applicationReadable,
    this.expiration,
    this.httpHeaders,
    this.mimeType,
    this.path,
    this.requireMatchingFile,
    this.uploadPathRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationReadable': ?applicationReadable,
      'expiration': ?expiration,
      'httpHeaders': ?httpHeaders,
      'mimeType': ?mimeType,
      'path': ?path,
      'requireMatchingFile': ?requireMatchingFile,
      'uploadPathRegex': ?uploadPathRegex,
    };
  }

  factory StandardAppVersionHandlerStaticFiles.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionHandlerStaticFiles(
      applicationReadable: map['applicationReadable'] == null ? null : map['applicationReadable'] as bool,
      expiration: map['expiration'] == null ? null : map['expiration'] as String,
      httpHeaders: map['httpHeaders'] == null ? null : (map['httpHeaders'] as Map).cast<String, String>(),
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      requireMatchingFile: map['requireMatchingFile'] == null ? null : map['requireMatchingFile'] as bool,
      uploadPathRegex: map['uploadPathRegex'] == null ? null : map['uploadPathRegex'] as String,
    );
  }
}

