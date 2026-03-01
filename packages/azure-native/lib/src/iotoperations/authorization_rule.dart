// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_resource_rule.dart';
import 'principal_definition.dart';
import 'state_store_resource_rule.dart';

/// AuthorizationConfig Rule Properties
class AuthorizationRule {
  /// Give access to Broker methods and topics.
  final List<BrokerResourceRule> brokerResources;
  /// Give access to clients based on the following properties.
  final PrincipalDefinition principals;
  /// Give access to state store resources.
  final List<StateStoreResourceRule>? stateStoreResources;

  /// Creates a new [AuthorizationRule].
  /// [brokerResources] Give access to Broker methods and topics.
  /// [principals] Give access to clients based on the following properties.
  /// [stateStoreResources] Give access to state store resources.
  AuthorizationRule({
    required this.brokerResources,
    required this.principals,
    this.stateStoreResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerResources': pulumi.Input.encodeList<BrokerResourceRule, Map<String, dynamic>>(brokerResources, (value) => value.toMap()),
      'principals': principals.toMap(),
      'stateStoreResources': ?stateStoreResources == null ? null : pulumi.Input.encodeList<StateStoreResourceRule, Map<String, dynamic>>(stateStoreResources!, (value) => value.toMap()),
    };
  }

  factory AuthorizationRule.fromMap(Map<String, dynamic> map) {
    return AuthorizationRule(
      brokerResources: pulumi.Input.decodeList<BrokerResourceRule>(map['brokerResources'], (value) => BrokerResourceRule.fromMap((value as Map).cast<String, dynamic>())),
      principals: PrincipalDefinition.fromMap((map['principals'] as Map).cast<String, dynamic>()),
      stateStoreResources: map['stateStoreResources'] == null ? null : pulumi.Input.decodeList<StateStoreResourceRule>(map['stateStoreResources'], (value) => StateStoreResourceRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

