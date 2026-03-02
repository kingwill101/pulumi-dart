// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cross-Origin-Resource-Sharing policy
class CorsPolicyResponse {
  /// Specifies whether the resource allows credentials
  final pulumi.Input<bool>? allowCredentials;
  /// Specifies the content for the access-control-allow-headers header
  final pulumi.Input<List<String>>? allowedHeaders;
  /// Specifies the content for the access-control-allow-methods header
  final pulumi.Input<List<String>>? allowedMethods;
  /// Specifies the content for the access-control-allow-origins header
  final pulumi.Input<List<String>> allowedOrigins;
  /// Specifies the content for the access-control-expose-headers header
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Specifies the content for the access-control-max-age header
  final pulumi.Input<int>? maxAge;

  /// Creates a new [CorsPolicyResponse].
  /// [allowCredentials] Specifies whether the resource allows credentials
  /// [allowedHeaders] Specifies the content for the access-control-allow-headers header
  /// [allowedMethods] Specifies the content for the access-control-allow-methods header
  /// [allowedOrigins] Specifies the content for the access-control-allow-origins header
  /// [exposeHeaders] Specifies the content for the access-control-expose-headers header
  /// [maxAge] Specifies the content for the access-control-max-age header
  CorsPolicyResponse({
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

  factory CorsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return CorsPolicyResponse(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials']! as bool).input(),
      allowedHeaders: map['allowedHeaders'] == null ? null : ((map['allowedHeaders']! as List).cast<String>()).input(),
      allowedMethods: map['allowedMethods'] == null ? null : ((map['allowedMethods']! as List).cast<String>()).input(),
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders']! as List).cast<String>()).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge']! as int).input(),
    );
  }
}

