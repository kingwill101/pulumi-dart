// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Account Token for BrokerAuthentication
class DataflowEndpointAuthenticationServiceAccountTokenResponse {
  /// Audience of the service account. Optional, defaults to the broker internal service account audience.
  final pulumi.Input<String> audience;

  /// Creates a new [DataflowEndpointAuthenticationServiceAccountTokenResponse].
  /// [audience] Audience of the service account. Optional, defaults to the broker internal service account audience.
  DataflowEndpointAuthenticationServiceAccountTokenResponse({
    required this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'audience': audience};
  }

  factory DataflowEndpointAuthenticationServiceAccountTokenResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataflowEndpointAuthenticationServiceAccountTokenResponse(
      audience: pulumi.Input.fromValue(map['audience'] as String),
    );
  }
}
