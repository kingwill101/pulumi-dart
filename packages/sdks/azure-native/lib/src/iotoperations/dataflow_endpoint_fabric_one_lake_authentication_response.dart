// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_authentication_system_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity_response.dart';

/// Microsoft Fabric endpoint. Authentication properties. NOTE - Only one method is supported for one entry
class DataflowEndpointFabricOneLakeAuthenticationResponse {
  /// Mode of Authentication.
  final pulumi.Input<dynamic> method;
  /// System-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse>? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse>? userAssignedManagedIdentitySettings;

  /// Creates a new [DataflowEndpointFabricOneLakeAuthenticationResponse].
  /// [method] Mode of Authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  const DataflowEndpointFabricOneLakeAuthenticationResponse({
    required this.method,
    this.systemAssignedManagedIdentitySettings,
    this.userAssignedManagedIdentitySettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'systemAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse, Map<String, dynamic>>(systemAssignedManagedIdentitySettings, (value) => value.toMap()),
      'userAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse, Map<String, dynamic>>(userAssignedManagedIdentitySettings, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointFabricOneLakeAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointFabricOneLakeAuthenticationResponse(
      method: pulumi.Input.fromValue(map['method']),
      systemAssignedManagedIdentitySettings: (() { final guardedValue = map['systemAssignedManagedIdentitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userAssignedManagedIdentitySettings: (() { final guardedValue = map['userAssignedManagedIdentitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
