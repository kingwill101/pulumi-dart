// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Account Token for BrokerAuthentication
class BrokerAuthenticatorMethodSatResponse {
  /// List of allowed audience.
  final pulumi.Input<List<String>> audiences;

  /// Creates a new [BrokerAuthenticatorMethodSatResponse].
  /// [audiences] List of allowed audience.
  const BrokerAuthenticatorMethodSatResponse({
    required this.audiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
    };
  }

  factory BrokerAuthenticatorMethodSatResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodSatResponse(
      audiences: pulumi.Input.fromValue((map['audiences'] as List).cast<String>()),
    );
  }
}

