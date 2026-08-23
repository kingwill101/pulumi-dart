// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowEndpoint Authentication Access Token properties
class DataflowEndpointAuthenticationAccessTokenResponse {
  /// Token secret name.
  final pulumi.Input<String> secretRef;

  /// Creates a new [DataflowEndpointAuthenticationAccessTokenResponse].
  /// [secretRef] Token secret name.
  const DataflowEndpointAuthenticationAccessTokenResponse({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory DataflowEndpointAuthenticationAccessTokenResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationAccessTokenResponse(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}
