// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowEndpoint Authentication X509 properties
class DataflowEndpointAuthenticationX509Response {
  /// Secret reference of the X.509 certificate.
  final pulumi.Input<String> secretRef;

  /// Creates a new [DataflowEndpointAuthenticationX509Response].
  /// [secretRef] Secret reference of the X.509 certificate.
  const DataflowEndpointAuthenticationX509Response({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationX509Response.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationX509Response(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}
