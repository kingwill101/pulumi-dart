// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_authentication_access_token_response.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity_response.dart';

/// Azure Data Lake endpoint Authentication properties.  NOTE Enum - Only one method is supported for one entry
class DataflowEndpointDataLakeStorageAuthenticationResponse {
  /// SAS token authentication.
  final pulumi.Input<DataflowEndpointAuthenticationAccessTokenResponse>? accessTokenSettings;
  /// Mode of Authentication.
  final pulumi.Input<String> method;
  /// System-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse>? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse>? userAssignedManagedIdentitySettings;

  /// Creates a new [DataflowEndpointDataLakeStorageAuthenticationResponse].
  /// [accessTokenSettings] SAS token authentication.
  /// [method] Mode of Authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  const DataflowEndpointDataLakeStorageAuthenticationResponse({
    this.accessTokenSettings,
    required this.method,
    this.systemAssignedManagedIdentitySettings,
    this.userAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationAccessTokenResponse, Map<String, dynamic>>(accessTokenSettings, (value) => value.toMap()),
      'method': method,
      'systemAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse, Map<String, dynamic>>(systemAssignedManagedIdentitySettings, (value) => value.toMap()),
      'userAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse, Map<String, dynamic>>(userAssignedManagedIdentitySettings, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointDataLakeStorageAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataLakeStorageAuthenticationResponse(
      accessTokenSettings: (() { final guardedValue = map['accessTokenSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationAccessTokenResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      systemAssignedManagedIdentitySettings: (() { final guardedValue = map['systemAssignedManagedIdentitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userAssignedManagedIdentitySettings: (() { final guardedValue = map['userAssignedManagedIdentitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

