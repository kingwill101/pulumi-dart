// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_authentication_response.dart';
import 'mqtt_bridge_remote_broker_x509_authentication_response.dart';

/// MqttBridge RemoteBrokerConnection Authentication methods. NOTE - Enum only one is allowed to be passed.
class MqttBridgeRemoteBrokerAuthenticationMethodsResponse {
  /// Managed identity remote broker authentication method.
  final ManagedIdentityAuthenticationResponse? systemAssignedManagedIdentity;
  /// X509 remote broker authentication method.
  final MqttBridgeRemoteBrokerX509AuthenticationResponse? x509;

  /// Creates a new [MqttBridgeRemoteBrokerAuthenticationMethodsResponse].
  /// [systemAssignedManagedIdentity] Managed identity remote broker authentication method.
  /// [x509] X509 remote broker authentication method.
  MqttBridgeRemoteBrokerAuthenticationMethodsResponse({
    this.systemAssignedManagedIdentity,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedManagedIdentity': ?systemAssignedManagedIdentity == null ? null : systemAssignedManagedIdentity!.toMap(),
      'x509': ?x509 == null ? null : x509!.toMap(),
    };
  }

  factory MqttBridgeRemoteBrokerAuthenticationMethodsResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerAuthenticationMethodsResponse(
      systemAssignedManagedIdentity: map['systemAssignedManagedIdentity'] == null ? null : ManagedIdentityAuthenticationResponse.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
      x509: map['x509'] == null ? null : MqttBridgeRemoteBrokerX509AuthenticationResponse.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

