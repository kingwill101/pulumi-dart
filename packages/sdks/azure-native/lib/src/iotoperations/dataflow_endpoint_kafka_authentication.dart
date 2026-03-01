// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_authentication_sasl.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_x509.dart';

/// Kafka endpoint Authentication properties. NOTE - only authentication property is allowed per entry
class DataflowEndpointKafkaAuthentication {
  /// Mode of Authentication.
  final String method;
  /// SASL authentication.
  final DataflowEndpointAuthenticationSasl? saslSettings;
  /// System-assigned managed identity authentication.
  final DataflowEndpointAuthenticationSystemAssignedManagedIdentity? systemAssignedManagedIdentitySettings;
  /// User-assigned managed identity authentication.
  final DataflowEndpointAuthenticationUserAssignedManagedIdentity? userAssignedManagedIdentitySettings;
  /// X.509 certificate authentication.
  final DataflowEndpointAuthenticationX509? x509CertificateSettings;

  /// Creates a new [DataflowEndpointKafkaAuthentication].
  /// [method] Mode of Authentication.
  /// [saslSettings] SASL authentication.
  /// [systemAssignedManagedIdentitySettings] System-assigned managed identity authentication.
  /// [userAssignedManagedIdentitySettings] User-assigned managed identity authentication.
  /// [x509CertificateSettings] X.509 certificate authentication.
  DataflowEndpointKafkaAuthentication({
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

  factory DataflowEndpointKafkaAuthentication.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointKafkaAuthentication(
      method: map['method'] as String,
      saslSettings: map['saslSettings'] == null ? null : DataflowEndpointAuthenticationSasl.fromMap((map['saslSettings'] as Map).cast<String, dynamic>()),
      systemAssignedManagedIdentitySettings: map['systemAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationSystemAssignedManagedIdentity.fromMap((map['systemAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      userAssignedManagedIdentitySettings: map['userAssignedManagedIdentitySettings'] == null ? null : DataflowEndpointAuthenticationUserAssignedManagedIdentity.fromMap((map['userAssignedManagedIdentitySettings'] as Map).cast<String, dynamic>()),
      x509CertificateSettings: map['x509CertificateSettings'] == null ? null : DataflowEndpointAuthenticationX509.fromMap((map['x509CertificateSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

