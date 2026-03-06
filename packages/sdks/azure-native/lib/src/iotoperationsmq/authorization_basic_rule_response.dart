// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_definition_response.dart';
import 'resource_info_definition_response.dart';

/// BasicRules of AuthorizationConfig Polar rules are not supported
class AuthorizationBasicRuleResponse {
  /// This subfield defines the broker resources that the Basic Rule is applied on.
  final pulumi.Input<List<ResourceInfoDefinitionResponse>> brokerResources;
  /// This subfield defines the identities that represent the clients.
  final pulumi.Input<PrincipalDefinitionResponse> principals;

  /// Creates a new [AuthorizationBasicRuleResponse].
  /// [brokerResources] This subfield defines the broker resources that the Basic Rule is applied on.
  /// [principals] This subfield defines the identities that represent the clients.
  const AuthorizationBasicRuleResponse({
    required this.brokerResources,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerResources': pulumi.Input.mapInputValue<List<ResourceInfoDefinitionResponse>, List<Map<String, dynamic>>>(brokerResources, (value) => pulumi.Input.encodeList<ResourceInfoDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': pulumi.Input.mapInputValue<PrincipalDefinitionResponse, Map<String, dynamic>>(principals, (value) => value.toMap()),
    };
  }

  factory AuthorizationBasicRuleResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationBasicRuleResponse(
      brokerResources: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceInfoDefinitionResponse>(map['brokerResources']!, (value) => ResourceInfoDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      principals: pulumi.Input.fromValue(PrincipalDefinitionResponse.fromMap((map['principals']! as Map).cast<String, dynamic>())),
    );
  }
}

