// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3CustomDomainCorsConfig {
  /// Whether to allow credentials (such as Cookies, Authorization headers, etc.). When AllowCredentials is true, AllowOrigins cannot use the wildcard '*'.
  final pulumi.Input<bool>? allowCredentials;
  /// List of allowed request headers, such as Content-Type, Authorization, etc.
  final pulumi.Input<List<String>>? allowHeaders;
  /// List of allowed HTTP methods, such as GET, POST, PUT, DELETE, etc.
  final pulumi.Input<List<String>>? allowMethods;
  /// List of allowed origins. Supports wildcard '*' to allow all origins (when AllowCredentials is false), specific domains like 'https://example.com', or an array of multiple domains.
  final pulumi.Input<List<String>>? allowOrigins;
  /// List of response headers that can be exposed to the browser.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Cache time (seconds) for preflight request results. Browsers will not resend preflight requests within this time.
  final pulumi.Input<int>? maxAge;

  /// Creates a new [V3CustomDomainCorsConfig].
  /// [allowCredentials] Whether to allow credentials (such as Cookies, Authorization headers, etc.). When AllowCredentials is true, AllowOrigins cannot use the wildcard '*'.
  /// [allowHeaders] List of allowed request headers, such as Content-Type, Authorization, etc.
  /// [allowMethods] List of allowed HTTP methods, such as GET, POST, PUT, DELETE, etc.
  /// [allowOrigins] List of allowed origins. Supports wildcard '*' to allow all origins (when AllowCredentials is false), specific domains like 'https://example.com', or an array of multiple domains.
  /// [exposeHeaders] List of response headers that can be exposed to the browser.
  /// [maxAge] Cache time (seconds) for preflight request results. Browsers will not resend preflight requests within this time.
  V3CustomDomainCorsConfig({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOrigins': ?allowOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory V3CustomDomainCorsConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainCorsConfig(
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowHeaders: (() { final guardedValue = map['allowHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowMethods: (() { final guardedValue = map['allowMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowOrigins: (() { final guardedValue = map['allowOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

