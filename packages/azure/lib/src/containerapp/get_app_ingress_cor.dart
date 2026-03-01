// ignore_for_file: unused_element, unnecessary_cast


class GetAppIngressCor {
  /// Whether user credentials are allowed in the cross-origin request.
  final bool allowCredentialsEnabled;
  /// The list of request headers that are permitted in the actual request.
  final List<String> allowedHeaders;
  /// The list of HTTP methods are allowed when accessing the resource in a cross-origin request.
  final List<String> allowedMethods;
  /// The list of origins that are allowed to make cross-origin calls.
  final List<String> allowedOrigins;
  /// The list of headers exposed to the browser in the response to a cross-origin request.
  final List<String> exposedHeaders;
  /// The number of seconds that the browser can cache the results of a preflight request.
  final int maxAgeInSeconds;

  /// Creates a new [GetAppIngressCor].
  /// [allowCredentialsEnabled] Whether user credentials are allowed in the cross-origin request.
  /// [allowedHeaders] The list of request headers that are permitted in the actual request.
  /// [allowedMethods] The list of HTTP methods are allowed when accessing the resource in a cross-origin request.
  /// [allowedOrigins] The list of origins that are allowed to make cross-origin calls.
  /// [exposedHeaders] The list of headers exposed to the browser in the response to a cross-origin request.
  /// [maxAgeInSeconds] The number of seconds that the browser can cache the results of a preflight request.
  GetAppIngressCor({
    required this.allowCredentialsEnabled,
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.exposedHeaders,
    required this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentialsEnabled': allowCredentialsEnabled,
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposedHeaders': exposedHeaders,
      'maxAgeInSeconds': maxAgeInSeconds,
    };
  }

  factory GetAppIngressCor.fromMap(Map<String, dynamic> map) {
    return GetAppIngressCor(
      allowCredentialsEnabled: map['allowCredentialsEnabled'] as bool,
      allowedHeaders: (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposedHeaders: (map['exposedHeaders'] as List).cast<String>(),
      maxAgeInSeconds: map['maxAgeInSeconds'] as int,
    );
  }
}

