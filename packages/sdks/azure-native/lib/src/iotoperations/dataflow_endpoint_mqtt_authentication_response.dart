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
  final pulumi.Input<DataflowEndpointAuthenticationServiceAccountTokenResponse>?
  serviceAccountTokenSettings;

  /// System-assigned managed identity authentication.
  final pulumi.Input<
    DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse
  >?
  systemAssignedManagedIdentitySettings;

  /// User-assigned managed identity authentication.
  final pulumi.Input<
    DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse
  >?
  userAssignedManagedIdentitySettings;

  /// X.509 certificate authentication.
  final pulumi.Input<DataflowEndpointAuthenticationX509Response>?
  x509CertificateSettings;

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
      'serviceAccountTokenSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationServiceAccountTokenResponse,
            Map<String, dynamic>
          >(serviceAccountTokenSettings, (value) => value.toMap()),
      'systemAssignedManagedIdentitySettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse,
            Map<String, dynamic>
          >(systemAssignedManagedIdentitySettings, (value) => value.toMap()),
      'userAssignedManagedIdentitySettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse,
            Map<String, dynamic>
          >(userAssignedManagedIdentitySettings, (value) => value.toMap()),
      'x509CertificateSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationX509Response,
            Map<String, dynamic>
          >(x509CertificateSettings, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointMqttAuthenticationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataflowEndpointMqttAuthenticationResponse(
      method: pulumi.Input.fromValue(map['method'] as String),
      serviceAccountTokenSettings: (() {
        final guardedValue = map['serviceAccountTokenSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationServiceAccountTokenResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      systemAssignedManagedIdentitySettings: (() {
        final guardedValue = map['systemAssignedManagedIdentitySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userAssignedManagedIdentitySettings: (() {
        final guardedValue = map['userAssignedManagedIdentitySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      x509CertificateSettings: (() {
        final guardedValue = map['x509CertificateSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationX509Response.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
