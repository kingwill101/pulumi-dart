// ignore_for_file: unused_element, unnecessary_cast

import 'authorization_config_response.dart';

/// BrokerAuthorization Resource properties
class BrokerAuthorizationPropertiesResponse {
  /// The list of authorization policies supported by the Authorization Resource.
  final AuthorizationConfigResponse authorizationPolicies;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [BrokerAuthorizationPropertiesResponse].
  /// [authorizationPolicies] The list of authorization policies supported by the Authorization Resource.
  /// [provisioningState] The status of the last operation.
  BrokerAuthorizationPropertiesResponse({
    required this.authorizationPolicies,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicies': authorizationPolicies.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory BrokerAuthorizationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthorizationPropertiesResponse(
      authorizationPolicies: AuthorizationConfigResponse.fromMap((map['authorizationPolicies'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

