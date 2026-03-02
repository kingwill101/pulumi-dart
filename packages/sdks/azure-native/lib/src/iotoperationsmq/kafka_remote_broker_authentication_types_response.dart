// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_x509_authentication_response.dart';
import 'managed_identity_authentication_response.dart';
import 'sasl_remote_broker_basic_authentication_response.dart';

/// Kafka RemoteBrokerConnection Authentication types. NOTE - Enum only one method is allowed to be passed.
class KafkaRemoteBrokerAuthenticationTypesResponse {
  /// Sasl remote broker authentication method.
  final pulumi.Input<SaslRemoteBrokerBasicAuthenticationResponse>? sasl;
  /// Managed identity remote broker authentication method.
  final pulumi.Input<ManagedIdentityAuthenticationResponse>? systemAssignedManagedIdentity;
  /// X509 remote broker authentication method.
  final pulumi.Input<KafkaX509AuthenticationResponse>? x509;

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
      'sasl': ?pulumi.Input.mapOptionalInputValue<SaslRemoteBrokerBasicAuthenticationResponse, Map<String, dynamic>>(sasl, (value) => value.toMap()),
      'systemAssignedManagedIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityAuthenticationResponse, Map<String, dynamic>>(systemAssignedManagedIdentity, (value) => value.toMap()),
      'x509': ?pulumi.Input.mapOptionalInputValue<KafkaX509AuthenticationResponse, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory KafkaRemoteBrokerAuthenticationTypesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaRemoteBrokerAuthenticationTypesResponse(
      sasl: map['sasl'] == null ? null : (SaslRemoteBrokerBasicAuthenticationResponse.fromMap((map['sasl'] as Map).cast<String, dynamic>())).input(),
      systemAssignedManagedIdentity: map['systemAssignedManagedIdentity'] == null ? null : (ManagedIdentityAuthenticationResponse.fromMap((map['systemAssignedManagedIdentity'] as Map).cast<String, dynamic>())).input(),
      x509: map['x509'] == null ? null : (KafkaX509AuthenticationResponse.fromMap((map['x509'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

