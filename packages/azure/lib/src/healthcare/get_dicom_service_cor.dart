// ignore_for_file: unused_element, unnecessary_cast


class GetDicomServiceCor {
  /// Whether to allow credentials in CORS.
  final bool allowCredentials;
  /// A list of allowed headers for CORS.
  final List<String> allowedHeaders;
  /// A list of allowed methods for CORS.
  final List<String> allowedMethods;
  /// A list of allowed origins for CORS.
  final List<String> allowedOrigins;
  /// The maximum age in seconds for the CORS configuration.
  final int maxAgeInSeconds;

  /// Creates a new [GetDicomServiceCor].
  /// [allowCredentials] Whether to allow credentials in CORS.
  /// [allowedHeaders] A list of allowed headers for CORS.
  /// [allowedMethods] A list of allowed methods for CORS.
  /// [allowedOrigins] A list of allowed origins for CORS.
  /// [maxAgeInSeconds] The maximum age in seconds for the CORS configuration.
  GetDicomServiceCor({
    required this.allowCredentials,
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': allowCredentials,
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'maxAgeInSeconds': maxAgeInSeconds,
    };
  }

  factory GetDicomServiceCor.fromMap(Map<String, dynamic> map) {
    return GetDicomServiceCor(
      allowCredentials: map['allowCredentials'] as bool,
      allowedHeaders: (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      maxAgeInSeconds: map['maxAgeInSeconds'] as int,
    );
  }
}

