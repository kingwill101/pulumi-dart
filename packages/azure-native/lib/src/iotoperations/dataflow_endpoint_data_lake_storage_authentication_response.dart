// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_authentication_access_token_response.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity_response.dart';

/// Azure Data Lake endpoint Authentication properties.  NOTE Enum - Only one method is supported for one entry
class DataflowEndpointDataLakeStorageAuthenticationResponse {
  /// SAS token authentication.
  final DataflowEndpointAuthenticationAccessTokenResponse? accessTokenSettings;
  /// Mode of Authentication.
  final String method;
  /// System-assigned managed identity authentication.
  final DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse? userAssignedManagedIdentitySettings;

  /// Creates a new [DataflowEndpointDataLakeStorageAuthenticationResponse].
  /// [accessTokenSettings] SAS token authentication.
  /// [method] Mode of Authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  DataflowEndpointDataLakeStorageAuthenticationResponse({
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

  factory DataflowEndpointDataLakeStorageAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataLakeStorageAuthenticationResponse(
      accessTokenSettings: map['accessTokenSettings'] == null ? null : DataflowEndpointAuthenticationAccessTokenResponse.fromMap((map['accessTokenSettings'] as Map).cast<String, dynamic>()),
      method: map['method'] as String,
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
    );
  }
}

