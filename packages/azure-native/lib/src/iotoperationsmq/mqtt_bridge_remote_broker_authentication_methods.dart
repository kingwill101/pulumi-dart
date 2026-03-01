// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_authentication.dart';
import 'mqtt_bridge_remote_broker_x509_authentication.dart';

/// MqttBridge RemoteBrokerConnection Authentication methods. NOTE - Enum only one is allowed to be passed.
class MqttBridgeRemoteBrokerAuthenticationMethods {
  /// Managed identity remote broker authentication method.
  final ManagedIdentityAuthentication? systemAssignedManagedIdentity;
  /// X509 remote broker authentication method.
  final MqttBridgeRemoteBrokerX509Authentication? x509;

  /// Creates a new [MqttBridgeRemoteBrokerAuthenticationMethods].
  /// [systemAssignedManagedIdentity] Managed identity remote broker authentication method.
  /// [x509] X509 remote broker authentication method.
  MqttBridgeRemoteBrokerAuthenticationMethods({
    this.systemAssignedManagedIdentity,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedManagedIdentity': ?systemAssignedManagedIdentity == null ? null : systemAssignedManagedIdentity!.toMap(),
      'x509': ?x509 == null ? null : x509!.toMap(),
    };
  }

  factory MqttBridgeRemoteBrokerAuthenticationMethods.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerAuthenticationMethods(
      systemAssignedManagedIdentity: map['systemAssignedManagedIdentity'] == null ? null : ManagedIdentityAuthentication.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
      x509: map['x509'] == null ? null : MqttBridgeRemoteBrokerX509Authentication.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

