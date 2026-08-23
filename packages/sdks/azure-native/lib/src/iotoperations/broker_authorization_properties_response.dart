// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_config_response.dart';

/// BrokerAuthorization Resource properties
class BrokerAuthorizationPropertiesResponse {
  /// The list of authorization policies supported by the Authorization Resource.
  final pulumi.Input<AuthorizationConfigResponse> authorizationPolicies;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [BrokerAuthorizationPropertiesResponse].
  /// [authorizationPolicies] The list of authorization policies supported by the Authorization Resource.
  /// [provisioningState] The status of the last operation.
  const BrokerAuthorizationPropertiesResponse({
    required this.authorizationPolicies,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationPolicies': pulumi.Input.mapInputValue<AuthorizationConfigResponse, Map<String, dynamic>>(authorizationPolicies, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory BrokerAuthorizationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthorizationPropertiesResponse(
      authorizationPolicies: pulumi.Input.fromValue(AuthorizationConfigResponse.fromMap((map['authorizationPolicies']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
