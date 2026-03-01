// ignore_for_file: unused_element, unnecessary_cast

import 'sasl_remote_broker_basic_authentication_token.dart';

/// Kafka RemoteBrokerConnection Sasl Authentication properties.
class SaslRemoteBrokerBasicAuthentication {
  /// Sasl Mechanism for remote broker authentication.
  final String saslType;
  /// Sasl token for remote broker authentication.
  final SaslRemoteBrokerBasicAuthenticationToken token;

  /// Creates a new [SaslRemoteBrokerBasicAuthentication].
  /// [saslType] Sasl Mechanism for remote broker authentication.
  /// [token] Sasl token for remote broker authentication.
  SaslRemoteBrokerBasicAuthentication({
    required this.saslType,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'saslType': saslType,
      'token': token.toMap(),
    };
  }

  factory SaslRemoteBrokerBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return SaslRemoteBrokerBasicAuthentication(
      saslType: map['saslType'] as String,
      token: SaslRemoteBrokerBasicAuthenticationToken.fromMap((map['token'] as Map).cast<String, dynamic>()),
    );
  }
}

