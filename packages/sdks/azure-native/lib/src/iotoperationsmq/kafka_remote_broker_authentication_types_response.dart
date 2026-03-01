// ignore_for_file: unused_element, unnecessary_cast

import 'kafka_x509_authentication_response.dart';
import 'managed_identity_authentication_response.dart';
import 'sasl_remote_broker_basic_authentication_response.dart';

/// Kafka RemoteBrokerConnection Authentication types. NOTE - Enum only one method is allowed to be passed.
class KafkaRemoteBrokerAuthenticationTypesResponse {
  /// Sasl remote broker authentication method.
  final SaslRemoteBrokerBasicAuthenticationResponse? sasl;
  /// Managed identity remote broker authentication method.
  final ManagedIdentityAuthenticationResponse? systemAssignedManagedIdentity;
  /// X509 remote broker authentication method.
  final KafkaX509AuthenticationResponse? x509;

  /// Creates a new [KafkaRemoteBrokerAuthenticationTypesResponse].
  /// [sasl] Sasl remote broker authentication method.
  /// [systemAssignedManagedIdentity] Managed identity remote broker authentication method.
  /// [x509] X509 remote broker authentication method.
  KafkaRemoteBrokerAuthenticationTypesResponse({
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

  factory KafkaRemoteBrokerAuthenticationTypesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerAuthenticationTypesResponse(
      sasl: map['sasl'] == null ? null : SaslRemoteBrokerBasicAuthenticationResponse.fromMap((map['sasl'] as Map).cast<String, dynamic>()),
      systemAssignedManagedIdentity: map['systemAssignedManagedIdentity'] == null ? null : ManagedIdentityAuthenticationResponse.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>()),
      x509: map['x509'] == null ? null : KafkaX509AuthenticationResponse.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

