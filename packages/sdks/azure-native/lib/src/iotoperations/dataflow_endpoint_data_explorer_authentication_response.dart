// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_authentication_system_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity_response.dart';

/// Azure Data Explorer Authentication properties. NOTE - only authentication property is allowed per entry.
class DataflowEndpointDataExplorerAuthenticationResponse {
  /// Mode of Authentication.
  final dynamic method;
  /// System-assigned managed identity authentication.
  final DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse? userAssignedManagedIdentitySettings;

  /// Creates a new [DataflowEndpointDataExplorerAuthenticationResponse].
  /// [method] Mode of Authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  DataflowEndpointDataExplorerAuthenticationResponse({
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

  factory DataflowEndpointDataExplorerAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataExplorerAuthenticationResponse(
      method: map['method'],
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

