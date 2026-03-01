// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_authentication_access_token.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity.dart';

/// Azure Data Lake endpoint Authentication properties.  NOTE Enum - Only one method is supported for one entry
class DataflowEndpointDataLakeStorageAuthentication {
  /// SAS token authentication.
  final DataflowEndpointAuthenticationAccessToken? accessTokenSettings;
  /// Mode of Authentication.
  final String method;
  /// System-assigned managed identity authentication.
  final DataflowEndpointAuthenticationSystemAssignedManagedIdentity? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final DataflowEndpointAuthenticationUserAssignedManagedIdentity? userAssignedManagedIdentitySettings;

  /// Creates a new [DataflowEndpointDataLakeStorageAuthentication].
  /// [accessTokenSettings] SAS token authentication.
  /// [method] Mode of Authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  DataflowEndpointDataLakeStorageAuthentication({
    this.accessTokenSettings,
    required this.method,
    this.systemAssignedManagedIdentitySettings,
    this.userAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenSettings': ?accessTokenSettings == null ? null : accessTokenSettings!.toMap(),
      'method': method,
      'systemAssignedManagedIdentitySettings': ?systemAssignedManagedIdentitySettings == null ? null : systemAssignedManagedIdentitySettings!.toMap(),
      'userAssignedManagedIdentitySettings': ?userAssignedManagedIdentitySettings == null ? null : userAssignedManagedIdentitySettings!.toMap(),
    };
  }

  factory DataflowEndpointDataLakeStorageAuthentication.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataLakeStorageAuthentication(
      accessTokenSettings: map['accessTokenSettings'] == null ? null : DataflowEndpointAuthenticationAccessToken.fromMap((map['accessTokenSettings'] as Map).cast<String, dynamic>()),
      method: map['method'] as String,
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationSystemAssignedManagedIdentity.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationUserAssignedManagedIdentity.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

