// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_authentication_system_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity.dart';

/// Azure Data Explorer Authentication properties. NOTE - only authentication property is allowed per entry.
class DataflowEndpointDataExplorerAuthentication {
  /// Mode of Authentication.
  final dynamic method;
  /// System-assigned managed identity authentication.
  final DataflowEndpointAuthenticationSystemAssignedManagedIdentity? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final DataflowEndpointAuthenticationUserAssignedManagedIdentity? userAssignedManagedIdentitySettings;

  /// Creates a new [DataflowEndpointDataExplorerAuthentication].
  /// [method] Mode of Authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  DataflowEndpointDataExplorerAuthentication({
    required this.method,
    this.systemAssignedManagedIdentitySettings,
    this.userAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'systemAssignedManagedIdentitySettings': ?systemAssignedManagedIdentitySettings == null ? null : systemAssignedManagedIdentitySettings!.toMap(),
      'userAssignedManagedIdentitySettings': ?userAssignedManagedIdentitySettings == null ? null : userAssignedManagedIdentitySettings!.toMap(),
    };
  }

  factory DataflowEndpointDataExplorerAuthentication.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataExplorerAuthentication(
      method: map['method'],
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationSystemAssignedManagedIdentity.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationUserAssignedManagedIdentity.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

