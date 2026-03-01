// ignore_for_file: unused_element, unnecessary_cast

import 'sasl_remote_broker_basic_authentication_token_response.dart';

/// Kafka RemoteBrokerConnection Sasl Authentication properties.
class SaslRemoteBrokerBasicAuthenticationResponse {
  /// Sasl Mechanism for remote broker authentication.
  final String saslType;
  /// Sasl token for remote broker authentication.
  final SaslRemoteBrokerBasicAuthenticationTokenResponse token;

  /// Creates a new [SaslRemoteBrokerBasicAuthenticationResponse].
  /// [saslType] Sasl Mechanism for remote broker authentication.
  /// [token] Sasl token for remote broker authentication.
  SaslRemoteBrokerBasicAuthenticationResponse({
    required this.saslType,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'saslType': saslType,
      'token': token.toMap(),
    };
  }

  factory SaslRemoteBrokerBasicAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return SaslRemoteBrokerBasicAuthenticationResponse(
      saslType: map['saslType'] as String,
      token: SaslRemoteBrokerBasicAuthenticationTokenResponse.fromMap((map['token'] as Map).cast<String, dynamic>()),
    );
  }
}

