// ignore_for_file: unused_element, unnecessary_cast


class GetFhirServiceCor {
  /// The set of headers to be allowed via CORS.
  final List<String> allowedHeaders;
  /// The methods to be allowed via CORS.
  final List<String> allowedMethods;
  /// The set of origins to be allowed via CORS.
  final List<String> allowedOrigins;
  /// Are credentials allowed via CORS?
  final bool credentialsAllowed;
  /// The max age to be allowed via CORS.
  final int maxAgeInSeconds;

  /// Creates a new [GetFhirServiceCor].
  /// [allowedHeaders] The set of headers to be allowed via CORS.
  /// [allowedMethods] The methods to be allowed via CORS.
  /// [allowedOrigins] The set of origins to be allowed via CORS.
  /// [credentialsAllowed] Are credentials allowed via CORS?
  /// [maxAgeInSeconds] The max age to be allowed via CORS.
  GetFhirServiceCor({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.credentialsAllowed,
    required this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'credentialsAllowed': credentialsAllowed,
      'maxAgeInSeconds': maxAgeInSeconds,
    };
  }

  factory GetFhirServiceCor.fromMap(Map<String, dynamic> map) {
    return GetFhirServiceCor(
      allowedHeaders: (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      credentialsAllowed: map['credentialsAllowed'] as bool,
      maxAgeInSeconds: map['maxAgeInSeconds'] as int,
    );
  }
}

