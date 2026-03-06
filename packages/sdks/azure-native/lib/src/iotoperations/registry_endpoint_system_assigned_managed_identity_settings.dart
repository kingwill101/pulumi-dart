// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// System assigned managed identity properties
class RegistryEndpointSystemAssignedManagedIdentitySettings {
  /// Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  final pulumi.Input<String>? audience;

  /// Creates a new [RegistryEndpointSystemAssignedManagedIdentitySettings].
  /// [audience] Audience of the service to authenticate against. Optional; defaults to the audience for Service host configuration.
  const RegistryEndpointSystemAssignedManagedIdentitySettings({
    this.audience,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
    };
  }

  factory RegistryEndpointSystemAssignedManagedIdentitySettings.fromMap(Map<String, dynamic> map) {
    return RegistryEndpointSystemAssignedManagedIdentitySettings(
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

