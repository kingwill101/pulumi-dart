// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization header information.
class BackendAuthorizationHeaderCredentials {
  /// Authentication Parameter value.
  final pulumi.Input<String> parameter;
  /// Authentication Scheme name.
  final pulumi.Input<String> scheme;

  /// Creates a new [BackendAuthorizationHeaderCredentials].
  /// [parameter] Authentication Parameter value.
  /// [scheme] Authentication Scheme name.
  const BackendAuthorizationHeaderCredentials({
    required this.parameter,
    required this.scheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': parameter,
      'scheme': scheme,
    };
  }

  factory BackendAuthorizationHeaderCredentials.fromMap(Map<String, dynamic> map) {
    return BackendAuthorizationHeaderCredentials(
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
    );
  }
}

