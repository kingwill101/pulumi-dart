// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_authentication_service_account_token_response.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_x509_response.dart';

/// Mqtt endpoint Authentication properties. NOTE - only authentication property is allowed per entry.
class DataflowEndpointMqttAuthenticationResponse {
  /// Mode of Authentication.
  final pulumi.Input<String> method;
  /// Kubernetes service account token authentication. Default audience if not set is aio-internal
  final pulumi.Input<DataflowEndpointAuthenticationServiceAccountTokenResponse>? serviceAccountTokenSettings;
  /// System-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse>? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse>? userAssignedManagedIdentitySettings;
  /// X.509 certificate authentication.
  final pulumi.Input<DataflowEndpointAuthenticationX509Response>? x509CertificateSettings;

  /// Creates a new [DataflowEndpointMqttAuthenticationResponse].
  /// [method] Mode of Authentication.
  /// [serviceAccountTokenSettings] Kubernetes service account token authentication. Default audience if not set is aio-internal
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  /// [x509CertificateSettings] X.509 certificate authentication.
  DataflowEndpointMqttAuthenticationResponse({
    required this.method,
    this.serviceAccountTokenSettings,
    this.systemAssignedManagedIdentitySettings,
    this.userAssignedManagedIdentitySettings,
    this.x509CertificateSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'serviceAccountTokenSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationServiceAccountTokenResponse, Map<String, dynamic>>(serviceAccountTokenSettings, (value) => value.toMap()),
      'systemAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse, Map<String, dynamic>>(systemAssignedManagedIdentitySettings, (value) => value.toMap()),
      'userAssignedManagedIdentitySettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse, Map<String, dynamic>>(userAssignedManagedIdentitySettings, (value) => value.toMap()),
      'x509CertificateSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointAuthenticationX509Response, Map<String, dynamic>>(x509CertificateSettings, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointMqttAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointMqttAuthenticationResponse(
      method: (map['method'] as String).input(),
      serviceAccountTokenSettings: map['serviceAccountTokenSettings'] == null ? null : (DataflowEndpointAuthenticationServiceAccountTokenResponse.fromMap((map['serviceAccountTokenSettings']! as Map).cast<String, dynamic>())).input(),
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : (DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap((map['systemAssignedManagedIdentitySettings']! as Map).cast<String, dynamic>())).input(),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : (DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse.fromMap((map['userAssignedManagedIdentitySettings']! as Map).cast<String, dynamic>())).input(),
      x509CertificateSettings: map['x509CertificateSettings'] == null ? null : (DataflowEndpointAuthenticationX509Response.fromMap((map['x509CertificateSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

