// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessClusterClientAuthenticationSaslIam {
  /// Whether SASL/IAM authentication is enabled or not.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ServerlessClusterClientAuthenticationSaslIam].
  /// [enabled] Whether SASL/IAM authentication is enabled or not.
  const ServerlessClusterClientAuthenticationSaslIam({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory ServerlessClusterClientAuthenticationSaslIam.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterClientAuthenticationSaslIam(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
