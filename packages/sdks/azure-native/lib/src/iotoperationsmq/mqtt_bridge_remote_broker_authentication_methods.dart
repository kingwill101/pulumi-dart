// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_authentication.dart';
import 'mqtt_bridge_remote_broker_x509_authentication.dart';

/// MqttBridge RemoteBrokerConnection Authentication methods. NOTE - Enum only one is allowed to be passed.
class MqttBridgeRemoteBrokerAuthenticationMethods {
  /// Managed identity remote broker authentication method.
  final pulumi.Input<ManagedIdentityAuthentication>? systemAssignedManagedIdentity;
  /// X509 remote broker authentication method.
  final pulumi.Input<MqttBridgeRemoteBrokerX509Authentication>? x509;

  /// Creates a new [MqttBridgeRemoteBrokerAuthenticationMethods].
  /// [systemAssignedManagedIdentity] Managed identity remote broker authentication method.
  /// [x509] X509 remote broker authentication method.
  const MqttBridgeRemoteBrokerAuthenticationMethods({
    this.systemAssignedManagedIdentity,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedManagedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityAuthentication, Map<String, dynamic>>(systemAssignedManagedIdentity, (value) => value.toMap()),
      'x509': ?pulumi.Input.mapOptionalInputValue<MqttBridgeRemoteBrokerX509Authentication, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory MqttBridgeRemoteBrokerAuthenticationMethods.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerAuthenticationMethods(
      systemAssignedManagedIdentity: (() { final guardedValue = map['systemAssignedManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509: (() { final guardedValue = map['x509']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MqttBridgeRemoteBrokerX509Authentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

