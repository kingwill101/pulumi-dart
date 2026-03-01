// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_authentication_sasl_response.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity_response.dart';
import 'dataflow_endpoint_authentication_x509_response.dart';

/// Kafka endpoint Authentication properties. NOTE - only authentication property is allowed per entry
class DataflowEndpointKafkaAuthenticationResponse {
  /// Mode of Authentication.
  final String method;
  /// SASL authentication.
  final DataflowEndpointAuthenticationSaslResponse? saslSettings;
  /// System-assigned managed identity authentication.
  final DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse? userAssignedManagedIdentitySettings;
  /// X.509 certificate authentication.
  final DataflowEndpointAuthenticationX509Response? x509CertificateSettings;

  /// Creates a new [DataflowEndpointKafkaAuthenticationResponse].
  /// [method] Mode of Authentication.
  /// [saslSettings] SASL authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  /// [x509CertificateSettings] X.509 certificate authentication.
  DataflowEndpointKafkaAuthenticationResponse({
    required this.method,
    this.saslSettings,
    this.systemAssignedManagedIdentitySettings,
    this.userAssignedManagedIdentitySettings,
    this.x509CertificateSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'saslSettings': ?saslSettings == null ? null : saslSettings!.toMap(),
      'systemAssignedManagedIdentitySettings': ?systemAssignedManagedIdentitySettings == null ? null : systemAssignedManagedIdentitySettings!.toMap(),
      'userAssignedManagedIdentitySettings': ?userAssignedManagedIdentitySettings == null ? null : userAssignedManagedIdentitySettings!.toMap(),
      'x509CertificateSettings': ?x509CertificateSettings == null ? null : x509CertificateSettings!.toMap(),
    };
  }

  factory DataflowEndpointKafkaAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointKafkaAuthenticationResponse(
      method: map['method'] as String,
      saslSettings: map['saslSettings'] == null ? null : DataflowEndpointAuthenticationSaslResponse.fromMap((map['saslSettings'] as Map).cast<String, dynamic>()),
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationSystemAssignedManagedIdentityResponse.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationUserAssignedManagedIdentityResponse.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      x509CertificateSettings: map['x509CertificateSettings'] == null ? null : DataflowEndpointAuthenticationX509Response.fromMap((map['x509CertificateSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

