// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudGatewayCors {
  /// Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  final List<String>? allowedHeaders;
  /// Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS` and `PUT`.
  final List<String>? allowedMethods;
  /// Allowed origin patterns to make cross-site requests.
  final List<String>? allowedOriginPatterns;
  /// Allowed origins to make cross-site requests. The special value `*` allows all domains.
  final List<String>? allowedOrigins;
  /// is user credentials are supported on cross-site requests?
  final bool? credentialsAllowed;
  /// HTTP response headers to expose for cross-site requests.
  final List<String>? exposedHeaders;
  /// How long, in seconds, the response from a pre-flight request can be cached by clients.
  final int? maxAgeSeconds;

  /// Creates a new [SpringCloudGatewayCors].
  /// [allowedHeaders] Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  /// [allowedMethods] Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default. Possible values are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS` and `PUT`.
  /// [allowedOriginPatterns] Allowed origin patterns to make cross-site requests.
  /// [allowedOrigins] Allowed origins to make cross-site requests. The special value `*` allows all domains.
  /// [credentialsAllowed] is user credentials are supported on cross-site requests?
  /// [exposedHeaders] HTTP response headers to expose for cross-site requests.
  /// [maxAgeSeconds] How long, in seconds, the response from a pre-flight request can be cached by clients.
  SpringCloudGatewayCors({
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOriginPatterns,
    this.allowedOrigins,
    this.credentialsAllowed,
    this.exposedHeaders,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOriginPatterns': ?allowedOriginPatterns,
      'allowedOrigins': ?allowedOrigins,
      'credentialsAllowed': ?credentialsAllowed,
      'exposedHeaders': ?exposedHeaders,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory SpringCloudGatewayCors.fromMap(Map<String, dynamic> map) {
    return SpringCloudGatewayCors(
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as List).cast<String>(),
      allowedOriginPatterns: map['allowedOriginPatterns'] == null ? null : (map['allowedOriginPatterns'] as List).cast<String>(),
      allowedOrigins: map['allowedOrigins'] == null ? null : (map['allowedOrigins'] as List).cast<String>(),
      credentialsAllowed: map['credentialsAllowed'] == null ? null : map['credentialsAllowed'] as bool,
      exposedHeaders: map['exposedHeaders'] == null ? null : (map['exposedHeaders'] as List).cast<String>(),
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : map['maxAgeSeconds'] as int,
    );
  }
}

