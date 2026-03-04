// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_authentication_sasl.dart';
import 'dataflow_endpoint_authentication_system_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_user_assigned_managed_identity.dart';
import 'dataflow_endpoint_authentication_x509.dart';

/// Kafka endpoint Authentication properties. NOTE - only authentication property is allowed per entry
class DataflowEndpointKafkaAuthentication {
  /// Mode of Authentication.
  final pulumi.Input<String> method;

  /// SASL authentication.
  final pulumi.Input<DataflowEndpointAuthenticationSasl>? saslSettings;

  /// System-assigned managed identity authentication.
  final pulumi.Input<
    DataflowEndpointAuthenticationSystemAssignedManagedIdentity
  >?
  systemAssignedManagedIdentitySettings;

  /// User-assigned managed identity authentication.
  final pulumi.Input<DataflowEndpointAuthenticationUserAssignedManagedIdentity>?
  userAssignedManagedIdentitySettings;

  /// X.509 certificate authentication.
  final pulumi.Input<DataflowEndpointAuthenticationX509>?
  x509CertificateSettings;

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
      'saslSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationSasl,
            Map<String, dynamic>
          >(saslSettings, (value) => value.toMap()),
      'systemAssignedManagedIdentitySettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationSystemAssignedManagedIdentity,
            Map<String, dynamic>
          >(systemAssignedManagedIdentitySettings, (value) => value.toMap()),
      'userAssignedManagedIdentitySettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationUserAssignedManagedIdentity,
            Map<String, dynamic>
          >(userAssignedManagedIdentitySettings, (value) => value.toMap()),
      'x509CertificateSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DataflowEndpointAuthenticationX509,
            Map<String, dynamic>
          >(x509CertificateSettings, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointKafkaAuthentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataflowEndpointKafkaAuthentication(
      method: pulumi.Input.fromValue(map['method'] as String),
      saslSettings: (() {
        final guardedValue = map['saslSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationSasl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      systemAssignedManagedIdentitySettings: (() {
        final guardedValue = map['systemAssignedManagedIdentitySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationSystemAssignedManagedIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userAssignedManagedIdentitySettings: (() {
        final guardedValue = map['userAssignedManagedIdentitySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationUserAssignedManagedIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      x509CertificateSettings: (() {
        final guardedValue = map['x509CertificateSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataflowEndpointAuthenticationX509.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
