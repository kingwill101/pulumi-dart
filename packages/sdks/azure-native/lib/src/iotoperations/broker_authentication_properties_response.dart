// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_methods_response.dart';

/// BrokerAuthentication Resource properties
class BrokerAuthenticationPropertiesResponse {
  /// Defines a set of Broker authentication methods to be used on `BrokerListeners`. For each array element one authenticator type supported.
  final List<BrokerAuthenticatorMethodsResponse> authenticationMethods;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [BrokerAuthenticationPropertiesResponse].
  /// [authenticationMethods] Defines a set of Broker authentication methods to be used on `BrokerListeners`. For each array element one authenticator type supported.
  /// [provisioningState] The status of the last operation.
  BrokerAuthenticationPropertiesResponse({
    required this.authenticationMethods,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethods': pulumi.Input.encodeList<BrokerAuthenticatorMethodsResponse, Map<String, dynamic>>(authenticationMethods, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory BrokerAuthenticationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticationPropertiesResponse(
      authenticationMethods: pulumi.Input.decodeList<BrokerAuthenticatorMethodsResponse>(map['authenticationMethods'], (value) => BrokerAuthenticatorMethodsResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

