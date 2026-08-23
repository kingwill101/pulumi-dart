// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_config.dart';

/// BrokerAuthorization Resource properties
class BrokerAuthorizationProperties {
  /// The list of authorization policies supported by the Authorization Resource.
  final pulumi.Input<AuthorizationConfig> authorizationPolicies;

  /// Creates a new [BrokerAuthorizationProperties].
  /// [authorizationPolicies] The list of authorization policies supported by the Authorization Resource.
  const BrokerAuthorizationProperties({
    required this.authorizationPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicies': pulumi.Input.mapInputValue<AuthorizationConfig, Map<String, dynamic>>(authorizationPolicies, (value) => value.toMap()),
    };
  }

  factory BrokerAuthorizationProperties.fromMap(Map<String, dynamic> map) {
    return BrokerAuthorizationProperties(
      authorizationPolicies: pulumi.Input.fromValue(AuthorizationConfig.fromMap((map['authorizationPolicies']! as Map).cast<String, dynamic>())),
    );
  }
}
