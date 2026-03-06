// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowEndpoint Authentication SystemAssignedManagedIdentity properties
class DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse {
  /// Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  final pulumi.Input<String>? audience;

  /// Creates a new [DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse].
  /// [audience] Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  const DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse({
    this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
    };
  }

  factory DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

