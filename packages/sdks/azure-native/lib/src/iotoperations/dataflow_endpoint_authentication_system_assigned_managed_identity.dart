// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DataflowEndpoint Authentication SystemAssignedManagedIdentity properties
class DataflowEndpointAuthenticationSystemAssignedManagedIdentity {
  /// Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  final pulumi.Input<String>? audience;

  /// Creates a new [DataflowEndpointAuthenticationSystemAssignedManagedIdentity].
  /// [audience] Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  DataflowEndpointAuthenticationSystemAssignedManagedIdentity({
    this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
    };
  }

  factory DataflowEndpointAuthenticationSystemAssignedManagedIdentity.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointAuthenticationSystemAssignedManagedIdentity(
      audience: map['audience'] == null ? null : (map['audience'] as String).input(),
    );
  }
}

