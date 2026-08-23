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
  const CorsPolicyResponse({
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
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: (() { final guardedValue = map['allowedMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
