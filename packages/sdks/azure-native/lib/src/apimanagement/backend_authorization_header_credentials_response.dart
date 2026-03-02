// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization header information.
class BackendAuthorizationHeaderCredentialsResponse {
  /// Authentication Parameter value.
  final pulumi.Input<String> parameter;
  /// Authentication Scheme name.
  final pulumi.Input<String> scheme;

  /// Creates a new [BackendAuthorizationHeaderCredentialsResponse].
  /// [parameter] Authentication Parameter value.
  /// [scheme] Authentication Scheme name.
  BackendAuthorizationHeaderCredentialsResponse({
    required this.parameter,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': parameter,
      'scheme': scheme,
    };
  }

  factory BackendAuthorizationHeaderCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return BackendAuthorizationHeaderCredentialsResponse(
      parameter: (map['parameter'] as String).input(),
      scheme: (map['scheme'] as String).input(),
    );
  }
}

