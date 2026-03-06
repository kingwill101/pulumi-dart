// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowEndpoint Authentication X509 properties
class DataflowEndpointAuthenticationX509 {
  /// Secret reference of the X.509 certificate.
  final pulumi.Input<String> secretRef;

  /// Creates a new [DataflowEndpointAuthenticationX509].
  /// [secretRef] Secret reference of the X.509 certificate.
  const DataflowEndpointAuthenticationX509({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationX509.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationX509(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}

