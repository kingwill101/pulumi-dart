// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_x509_authentication.dart';
import 'managed_identity_authentication.dart';
import 'sasl_remote_broker_basic_authentication.dart';

/// Kafka RemoteBrokerConnection Authentication types. NOTE - Enum only one method is allowed to be passed.
class KafkaRemoteBrokerAuthenticationTypes {
  /// Sasl remote broker authentication method.
  final pulumi.Input<SaslRemoteBrokerBasicAuthentication>? sasl;

  /// Managed identity remote broker authentication method.
  final pulumi.Input<ManagedIdentityAuthentication>?
  systemAssignedManagedIdentity;

  /// X509 remote broker authentication method.
  final pulumi.Input<KafkaX509Authentication>? x509;

  /// Creates a new [KafkaRemoteBrokerAuthenticationTypes].
  /// [sasl] Sasl remote broker authentication method.
  /// [systemAssignedManagedIdentity] Managed identity remote broker authentication method.
  /// [x509] X509 remote broker authentication method.
  KafkaRemoteBrokerAuthenticationTypes({
    this.sasl,
    this.systemAssignedManagedIdentity,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasl':
          ?pulumi.Input.mapOptionalInputValue<
            SaslRemoteBrokerBasicAuthentication,
            Map<String, dynamic>
          >(sasl, (value) => value.toMap()),
      'systemAssignedManagedIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedIdentityAuthentication,
            Map<String, dynamic>
          >(systemAssignedManagedIdentity, (value) => value.toMap()),
      'x509':
          ?pulumi.Input.mapOptionalInputValue<
            KafkaX509Authentication,
            Map<String, dynamic>
          >(x509, (value) => value.toMap()),
    };
  }

  factory KafkaRemoteBrokerAuthenticationTypes.fromMap(
    Map<String, dynamic> map,
  ) {
    return KafkaRemoteBrokerAuthenticationTypes(
      sasl: (() {
        final guardedValue = map['sasl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SaslRemoteBrokerBasicAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      systemAssignedManagedIdentity: (() {
        final guardedValue = map['systemAssignedManagedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedIdentityAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      x509: (() {
        final guardedValue = map['x509'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KafkaX509Authentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
