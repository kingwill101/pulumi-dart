// ignore_for_file: unused_element, unnecessary_cast

import 'authorization.dart';

/// Specifies the security related settings for the bare metal user cluster.
class BareMetalSecurityConfig {
  /// Configures user access to the user cluster.
  final Authorization? authorization;

  BareMetalSecurityConfig({
    this.authorization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorizationValue = authorization;
    if (authorizationValue != null) {
      map['authorization'] = authorizationValue.toMap();
    }
    return map;
  }

  factory BareMetalSecurityConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalSecurityConfig(
      authorization: map['authorization'] == null
          ? null
          : Authorization.fromMap(
              (map['authorization'] as Map).cast<String, dynamic>()),
    );
  }
}
