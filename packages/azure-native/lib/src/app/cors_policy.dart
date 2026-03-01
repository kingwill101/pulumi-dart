// ignore_for_file: unused_element, unnecessary_cast


/// Cross-Origin-Resource-Sharing policy
class CorsPolicy {
  /// Specifies whether the resource allows credentials
  final bool? allowCredentials;
  /// Specifies the content for the access-control-allow-headers header
  final List<String>? allowedHeaders;
  /// Specifies the content for the access-control-allow-methods header
  final List<String>? allowedMethods;
  /// Specifies the content for the access-control-allow-origins header
  final List<String> allowedOrigins;
  /// Specifies the content for the access-control-expose-headers header
  final List<String>? exposeHeaders;
  /// Specifies the content for the access-control-max-age header
  final int? maxAge;

  /// Creates a new [CorsPolicy].
  /// [allowCredentials] Specifies whether the resource allows credentials
  /// [allowedHeaders] Specifies the content for the access-control-allow-headers header
  /// [allowedMethods] Specifies the content for the access-control-allow-methods header
  /// [allowedOrigins] Specifies the content for the access-control-allow-origins header
  /// [exposeHeaders] Specifies the content for the access-control-expose-headers header
  /// [maxAge] Specifies the content for the access-control-max-age header
  CorsPolicy({
    this.allowCredentials,
    this.allowedHeaders,
    this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory CorsPolicy.fromMap(Map<String, dynamic> map) {
    return CorsPolicy(
      allowCredentials: map['allowCredentials'] == null ? null : map['allowCredentials'] as bool,
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposeHeaders: map['exposeHeaders'] == null ? null : (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as int,
    );
  }
}

