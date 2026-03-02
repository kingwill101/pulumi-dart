// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for the CORS configuration of the service instance.
class ServiceCorsConfigurationInfoResponse {
  /// If credentials are allowed via CORS.
  final pulumi.Input<bool>? allowCredentials;
  /// The headers to be allowed via CORS.
  final pulumi.Input<List<String>>? headers;
  /// The max age to be allowed via CORS.
  final pulumi.Input<double>? maxAge;
  /// The methods to be allowed via CORS.
  final pulumi.Input<List<String>>? methods;
  /// The origins to be allowed via CORS.
  final pulumi.Input<List<String>>? origins;

  /// Creates a new [ServiceCorsConfigurationInfoResponse].
  /// [allowCredentials] If credentials are allowed via CORS.
  /// [headers] The headers to be allowed via CORS.
  /// [maxAge] The max age to be allowed via CORS.
  /// [methods] The methods to be allowed via CORS.
  /// [origins] The origins to be allowed via CORS.
  ServiceCorsConfigurationInfoResponse({
    this.allowCredentials,
    this.headers,
    this.maxAge,
    this.methods,
    this.origins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'headers': ?headers,
      'maxAge': ?maxAge,
      'methods': ?methods,
      'origins': ?origins,
    };
  }

  factory ServiceCorsConfigurationInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceCorsConfigurationInfoResponse(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials']! as bool).input(),
      headers: map['headers'] == null ? null : ((map['headers']! as List).cast<String>()).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge']! as double).input(),
      methods: map['methods'] == null ? null : ((map['methods']! as List).cast<String>()).input(),
      origins: map['origins'] == null ? null : ((map['origins']! as List).cast<String>()).input(),
    );
  }
}

