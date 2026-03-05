// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_authentication_access_token.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity.dart';

/// Azure Data Lake endpoint Authentication properties.  NOTE Enum - Only one method is supported for one entry
class DataflowEndpointDataLakeStorageAuthentication {
  /// SAS token authentication.
  final pulumi.Input<DataflowEndpointAuthenticationAccessToken>? accessTokenSettings;
  /// Mode of Authentication.
  final pulumi.Input<String> method;
  /// System-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationSystemAssignedManagedIdentity>? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationUserAssignedManagedIdentity>? userAssignedManagedIdentitySettings;

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
      'accessTokenSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationAccessToken, Map<String, dynamic>>(accessTokenSettings, (value) => value.toMap()),
      'method': method,
      'systemAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationSystemAssignedManagedIdentity, Map<String, dynamic>>(systemAssignedManagedIdentitySettings, (value) => value.toMap()),
      'userAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationUserAssignedManagedIdentity, Map<String, dynamic>>(userAssignedManagedIdentitySettings, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointDataLakeStorageAuthentication.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointDataLakeStorageAuthentication(
      accessTokenSettings: (() { final guardedValue = map['accessTokenSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationAccessToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      systemAssignedManagedIdentitySettings: (() { final guardedValue = map['systemAssignedManagedIdentitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationSystemAssignedManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userAssignedManagedIdentitySettings: (() { final guardedValue = map['userAssignedManagedIdentitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationUserAssignedManagedIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

