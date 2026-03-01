// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_authentication_service_account_token.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_x509.dart';

/// Mqtt endpoint Authentication properties. NOTE - only authentication property is allowed per entry.
class DataflowEndpointMqttAuthentication {
  /// Mode of Authentication.
  final String method;
  /// Kubernetes service account token authentication. Default audience if not set is aio-internal
  final DataflowEndpointAuthenticationServiceAccountToken? serviceAccountTokenSettings;
  /// System-assigned managed identity authentication.
  final DataflowEndpointAuthenticationSystemAssignedManagedIdentity? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final DataflowEndpointAuthenticationUserAssignedManagedIdentity? userAssignedManagedIdentitySettings;
  /// X.509 certificate authentication.
  final DataflowEndpointAuthenticationX509? x509CertificateSettings;

  /// Creates a new [DataflowEndpointMqttAuthentication].
  /// [method] Mode of Authentication.
  /// [serviceAccountTokenSettings] Kubernetes service account token authentication. Default audience if not set is aio-internal
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  /// [x509CertificateSettings] X.509 certificate authentication.
  DataflowEndpointMqttAuthentication({
    required this.method,
    this.serviceAccountTokenSettings,
    this.systemAssignedManagedIdentitySettings,
    this.userAssignedManagedIdentitySettings,
    this.x509CertificateSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'serviceAccountTokenSettings': ?serviceAccountTokenSettings == null ? null : serviceAccountTokenSettings!.toMap(),
      'systemAssignedManagedIdentitySettings': ?systemAssignedManagedIdentitySettings == null ? null : systemAssignedManagedIdentitySettings!.toMap(),
      'userAssignedManagedIdentitySettings': ?userAssignedManagedIdentitySettings == null ? null : userAssignedManagedIdentitySettings!.toMap(),
      'x509CertificateSettings': ?x509CertificateSettings == null ? null : x509CertificateSettings!.toMap(),
    };
  }

  factory DataflowEndpointMqttAuthentication.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointMqttAuthentication(
      method: map['method'] as String,
      serviceAccountTokenSettings: map['serviceAccountTokenSettings'] == null ? null : DataflowEndpointAuthenticationServiceAccountToken.fromMap((map['serviceAccountTokenSettings'] as Map).cast<String, dynamic>()),
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationSystemAssignedManagedIdentity.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationUserAssignedManagedIdentity.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      x509CertificateSettings: map['x509CertificateSettings'] == null ? null : DataflowEndpointAuthenticationX509.fromMap((map['x509CertificateSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

