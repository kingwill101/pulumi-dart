// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_x509_authentication.dart';
import 'managed_identity_authentication.dart';
import 'sasl_remote_broker_basic_authentication.dart';

/// Kafka RemoteBrokerConnection Authentication types. NOTE - Enum only one method is allowed to be passed.
class KafkaRemoteBrokerAuthenticationTypes {
  /// Sasl remote broker authentication method.
  final SaslRemoteBrokerBasicAuthentication? sasl;
  /// Managed identity remote broker authentication method.
  final ManagedIdentityAuthentication? systemAssignedManagedIdentity;
  /// X509 remote broker authentication method.
  final KafkaX509Authentication? x509;

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
      'sasl': ?sasl == null ? null : sasl!.toMap(),
      'systemAssignedManagedIdentity': ?systemAssignedManagedIdentity == null ? null : systemAssignedManagedIdentity!.toMap(),
      'x509': ?x509 == null ? null : x509!.toMap(),
    };
  }

  factory KafkaRemoteBrokerAuthenticationTypes.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerAuthenticationTypes(
      sasl: map['sasl'] == null ? null : SaslRemoteBrokerBasicAuthentication.fromMap((map['sasl'] as Map).cast<String, dynamic>()),
      systemAssignedManagedIdentity: map['systemAssignedManagedIdentity'] == null ? null : ManagedIdentityAuthentication.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
      x509: map['x509'] == null ? null : KafkaX509Authentication.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

