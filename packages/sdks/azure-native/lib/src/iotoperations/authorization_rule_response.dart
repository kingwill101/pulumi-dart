// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_resource_rule_response.dart';
import 'principal_definition_response.dart';
import 'state_store_resource_rule_response.dart';

/// AuthorizationConfig Rule Properties
class AuthorizationRuleResponse {
  /// Give access to Broker methods and topics.
  final List<BrokerResourceRuleResponse> brokerResources;
  /// Give access to clients based on the following properties.
  final PrincipalDefinitionResponse principals;
  /// Give access to state store resources.
  final List<StateStoreResourceRuleResponse>? stateStoreResources;

  /// Creates a new [AuthorizationRuleResponse].
  /// [brokerResources] Give access to Broker methods and topics.
  /// [principals] Give access to clients based on the following properties.
  /// [stateStoreResources] Give access to state store resources.
  AuthorizationRuleResponse({
    required this.brokerResources,
    required this.principals,
    this.stateStoreResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerResources': pulumi.Input.encodeList<BrokerResourceRuleResponse, Map<String, dynamic>>(brokerResources, (value) => value.toMap()),
      'principals': principals.toMap(),
      'stateStoreResources': ?stateStoreResources == null ? null : pulumi.Input.encodeList<StateStoreResourceRuleResponse, Map<String, dynamic>>(stateStoreResources!, (value) => value.toMap()),
    };
  }

  factory AuthorizationRuleResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationRuleResponse(
      brokerResources: pulumi.Input.decodeList<BrokerResourceRuleResponse>(map['brokerResources'], (value) => BrokerResourceRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      principals: PrincipalDefinitionResponse.fromMap((map['principals'] as Map).cast<String, dynamic>()),
      stateStoreResources: map['stateStoreResources'] == null ? null : pulumi.Input.decodeList<StateStoreResourceRuleResponse>(map['stateStoreResources'], (value) => StateStoreResourceRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

