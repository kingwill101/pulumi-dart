// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sasl_remote_broker_basic_authentication_token_response.dart';

/// Kafka RemoteBrokerConnection Sasl Authentication properties.
class SaslRemoteBrokerBasicAuthenticationResponse {
  /// Sasl Mechanism for remote broker authentication.
  final pulumi.Input<String> saslType;

  /// Sasl token for remote broker authentication.
  final pulumi.Input<SaslRemoteBrokerBasicAuthenticationTokenResponse> token;

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
      'token':
          pulumi.Input.mapInputValue<
            SaslRemoteBrokerBasicAuthenticationTokenResponse,
            Map<String, dynamic>
          >(token, (value) => value.toMap()),
    };
  }

  factory SaslRemoteBrokerBasicAuthenticationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SaslRemoteBrokerBasicAuthenticationResponse(
      saslType: pulumi.Input.fromValue(map['saslType'] as String),
      token: pulumi.Input.fromValue(
        SaslRemoteBrokerBasicAuthenticationTokenResponse.fromMap(
          (map['token']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
