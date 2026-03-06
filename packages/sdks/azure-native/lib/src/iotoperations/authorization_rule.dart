// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_resource_rule.dart';
import 'principal_definition.dart';
import 'state_store_resource_rule.dart';

/// AuthorizationConfig Rule Properties
class AuthorizationRule {
  /// Give access to Broker methods and topics.
  final pulumi.Input<List<BrokerResourceRule>> brokerResources;
  /// Give access to clients based on the following properties.
  final pulumi.Input<PrincipalDefinition> principals;
  /// Give access to state store resources.
  final pulumi.Input<List<StateStoreResourceRule>>? stateStoreResources;

  /// Creates a new [AuthorizationRule].
  /// [brokerResources] Give access to Broker methods and topics.
  /// [principals] Give access to clients based on the following properties.
  /// [stateStoreResources] Give access to state store resources.
  const AuthorizationRule({
    required this.brokerResources,
    required this.principals,
    this.stateStoreResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerResources': pulumi.Input.mapInputValue<List<BrokerResourceRule>, List<Map<String, dynamic>>>(brokerResources, (value) => pulumi.Input.encodeList<BrokerResourceRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': pulumi.Input.mapInputValue<PrincipalDefinition, Map<String, dynamic>>(principals, (value) => value.toMap()),
      'stateStoreResources': ?pulumi.Input.mapOptionalInputValue<List<StateStoreResourceRule>, List<Map<String, dynamic>>>(stateStoreResources, (value) => pulumi.Input.encodeList<StateStoreResourceRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationRule.fromMap(Map<String, dynamic> map) {
    return AuthorizationRule(
      brokerResources: pulumi.Input.fromValue(pulumi.Input.decodeList<BrokerResourceRule>(map['brokerResources']!, (value) => BrokerResourceRule.fromMap((value as Map).cast<String, dynamic>()))),
      principals: pulumi.Input.fromValue(PrincipalDefinition.fromMap((map['principals']! as Map).cast<String, dynamic>())),
      stateStoreResources: (() { final guardedValue = map['stateStoreResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StateStoreResourceRule>(guardedValue, (value) => StateStoreResourceRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

