// ignore_for_file: unused_element, unnecessary_cast

class ServerlessClusterClientAuthenticationSaslIam {
  /// Whether SASL/IAM authentication is enabled or not.
  final bool enabled;

  /// Creates a new [ServerlessClusterClientAuthenticationSaslIam].
  /// [enabled] Whether SASL/IAM authentication is enabled or not.
  ServerlessClusterClientAuthenticationSaslIam({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ServerlessClusterClientAuthenticationSaslIam.fromMap(
      Map<String, dynamic> map) {
    return ServerlessClusterClientAuthenticationSaslIam(
      enabled: map['enabled'] as bool,
    );
  }
}
