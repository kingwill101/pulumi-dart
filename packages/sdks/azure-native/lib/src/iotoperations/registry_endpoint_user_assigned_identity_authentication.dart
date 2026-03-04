// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_endpoint_user_assigned_managed_identity_settings.dart';

/// User assigned identity authentication
class RegistryEndpointUserAssignedIdentityAuthentication {
  /// The authentication method.
  /// Expected value is 'UserAssignedManagedIdentity'.
  final pulumi.Input<String> method;

  /// User assigned managed identity properties
  final pulumi.Input<RegistryEndpointUserAssignedManagedIdentitySettings>
  userAssignedManagedIdentitySettings;

  /// Creates a new [RegistryEndpointUserAssignedIdentityAuthentication].
  /// [method] The authentication method.
  /// [userAssignedManagedIdentitySettings] User assigned managed identity properties
  RegistryEndpointUserAssignedIdentityAuthentication({
    required this.method,
    required this.userAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'userAssignedManagedIdentitySettings':
          pulumi.Input.mapInputValue<
            RegistryEndpointUserAssignedManagedIdentitySettings,
            Map<String, dynamic>
          >(userAssignedManagedIdentitySettings, (value) => value.toMap()),
    };
  }

  factory RegistryEndpointUserAssignedIdentityAuthentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegistryEndpointUserAssignedIdentityAuthentication(
      method: pulumi.Input.fromValue(map['method'] as String),
      userAssignedManagedIdentitySettings: pulumi.Input.fromValue(
        RegistryEndpointUserAssignedManagedIdentitySettings.fromMap(
          (map['userAssignedManagedIdentitySettings']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
    );
  }
}
