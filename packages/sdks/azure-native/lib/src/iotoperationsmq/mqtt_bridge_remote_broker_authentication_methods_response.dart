// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_authentication_response.dart';
import 'mqtt_bridge_remote_broker_x509_authentication_response.dart';

/// MqttBridge RemoteBrokerConnection Authentication methods. NOTE - Enum only one is allowed to be passed.
class MqttBridgeRemoteBrokerAuthenticationMethodsResponse {
  /// Managed identity remote broker authentication method.
  final pulumi.Input<ManagedIdentityAuthenticationResponse?>? systemAssignedManagedIdentity;
  /// X509 remote broker authentication method.
  final pulumi.Input<MqttBridgeRemoteBrokerX509AuthenticationResponse?>? x509;

  /// Creates a new [MqttBridgeRemoteBrokerAuthenticationMethodsResponse].
  /// [systemAssignedManagedIdentity] Managed identity remote broker authentication method.
  /// [x509] X509 remote broker authentication method.
  const MqttBridgeRemoteBrokerAuthenticationMethodsResponse({
    this.systemAssignedManagedIdentity,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedManagedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityAuthenticationResponse, Map<String, dynamic>>(systemAssignedManagedIdentity, (value) => value.toMap()),
      'x509': ?pulumi.Input.mapOptionalInputValue<MqttBridgeRemoteBrokerX509AuthenticationResponse, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory MqttBridgeRemoteBrokerAuthenticationMethodsResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerAuthenticationMethodsResponse(
      systemAssignedManagedIdentity: (() { final guardedValue = map['systemAssignedManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509: (() { final guardedValue = map['x509']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MqttBridgeRemoteBrokerX509AuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
