// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_config.dart';

/// BrokerAuthorization Resource properties
class BrokerAuthorizationProperties {
  /// The list of authorization policies supported by the Authorization Resource.
  final AuthorizationConfig authorizationPolicies;

  /// Creates a new [BrokerAuthorizationProperties].
  /// [authorizationPolicies] The list of authorization policies supported by the Authorization Resource.
  BrokerAuthorizationProperties({
    required this.authorizationPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicies': authorizationPolicies.toMap(),
    };
  }

  factory BrokerAuthorizationProperties.fromMap(Map<String, dynamic> map) {
    return BrokerAuthorizationProperties(
      authorizationPolicies: AuthorizationConfig.fromMap((map['authorizationPolicies'] as Map).cast<String, dynamic>()),
    );
  }
}

