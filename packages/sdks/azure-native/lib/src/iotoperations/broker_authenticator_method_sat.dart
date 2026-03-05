// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Account Token for BrokerAuthentication
class BrokerAuthenticatorMethodSat {
  /// List of allowed audience.
  final pulumi.Input<List<String>> audiences;

  /// Creates a new [BrokerAuthenticatorMethodSat].
  /// [audiences] List of allowed audience.
  BrokerAuthenticatorMethodSat({
    required this.audiences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': audiences,
    };
  }

  factory BrokerAuthenticatorMethodSat.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodSat(
      audiences: pulumi.Input.fromValue((map['audiences'] as List).cast<String>()),
    );
  }
}

