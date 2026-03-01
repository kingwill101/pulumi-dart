// ignore_for_file: unused_element, unnecessary_cast


class ApplicationTomcatConfigV2 {
  /// The path.
  final String? contextPath;
  /// The maximum number of connections in the connection pool.
  final int? maxThreads;
  /// The port.
  final int? port;
  /// The URI encoding scheme in the Tomcat container.
  final String? uriEncoding;
  /// Specifies whether to use the encoding scheme that is specified by BodyEncoding for URL.
  final String? useBodyEncodingForUri;

  /// Creates a new [ApplicationTomcatConfigV2].
  /// [contextPath] The path.
  /// [maxThreads] The maximum number of connections in the connection pool.
  /// [port] The port.
  /// [uriEncoding] The URI encoding scheme in the Tomcat container.
  /// [useBodyEncodingForUri] Specifies whether to use the encoding scheme that is specified by BodyEncoding for URL.
  ApplicationTomcatConfigV2({
    this.contextPath,
    this.maxThreads,
    this.port,
    this.uriEncoding,
    this.useBodyEncodingForUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextPath': ?contextPath,
      'maxThreads': ?maxThreads,
      'port': ?port,
      'uriEncoding': ?uriEncoding,
      'useBodyEncodingForUri': ?useBodyEncodingForUri,
    };
  }

  factory ApplicationTomcatConfigV2.fromMap(Map<String, dynamic> map) {
    return ApplicationTomcatConfigV2(
      contextPath: map['contextPath'] == null ? null : map['contextPath'] as String,
      maxThreads: map['maxThreads'] == null ? null : map['maxThreads'] as int,
      port: map['port'] == null ? null : map['port'] as int,
      uriEncoding: map['uriEncoding'] == null ? null : map['uriEncoding'] as String,
      useBodyEncodingForUri: map['useBodyEncodingForUri'] == null ? null : map['useBodyEncodingForUri'] as String,
    );
  }
}

