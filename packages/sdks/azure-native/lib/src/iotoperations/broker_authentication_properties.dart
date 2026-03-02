// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_methods.dart';

/// BrokerAuthentication Resource properties
class BrokerAuthenticationProperties {
  /// Defines a set of Broker authentication methods to be used on `BrokerListeners`. For each array element one authenticator type supported.
  final pulumi.Input<List<BrokerAuthenticatorMethods>> authenticationMethods;

  /// Creates a new [BrokerAuthenticationProperties].
  /// [authenticationMethods] Defines a set of Broker authentication methods to be used on `BrokerListeners`. For each array element one authenticator type supported.
  BrokerAuthenticationProperties({
    required this.authenticationMethods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethods': pulumi.Input.mapInputValue<List<BrokerAuthenticatorMethods>, List<Map<String, dynamic>>>(authenticationMethods, (value) => pulumi.Input.encodeList<BrokerAuthenticatorMethods, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BrokerAuthenticationProperties.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticationProperties(
      authenticationMethods: (pulumi.Input.decodeList<BrokerAuthenticatorMethods>(map['authenticationMethods'], (value) => BrokerAuthenticatorMethods.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

