// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowEndpoint Authentication Sasl properties
class DataflowEndpointAuthenticationSasl {
  /// Type of SASL authentication. Can be PLAIN, SCRAM-SHA-256, or SCRAM-SHA-512.
  final pulumi.Input<String> saslType;

  /// Token secret name.
  final pulumi.Input<String> secretRef;

  /// Creates a new [DataflowEndpointAuthenticationSasl].
  /// [saslType] Type of SASL authentication. Can be PLAIN, SCRAM-SHA-256, or SCRAM-SHA-512.
  /// [secretRef] Token secret name.
  DataflowEndpointAuthenticationSasl({
    required this.saslType,
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'saslType': saslType, 'secretRef': secretRef};
  }

  factory DataflowEndpointAuthenticationSasl.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationSasl(
      saslType: pulumi.Input.fromValue(map['saslType'] as String),
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}
