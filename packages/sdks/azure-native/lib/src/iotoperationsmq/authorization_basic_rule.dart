// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal_definition.dart';
import 'resource_info_definition.dart';

/// BasicRules of AuthorizationConfig Polar rules are not supported
class AuthorizationBasicRule {
  /// This subfield defines the broker resources that the Basic Rule is applied on.
  final pulumi.Input<List<ResourceInfoDefinition>> brokerResources;
  /// This subfield defines the identities that represent the clients.
  final pulumi.Input<PrincipalDefinition> principals;

  /// Creates a new [AuthorizationBasicRule].
  /// [brokerResources] This subfield defines the broker resources that the Basic Rule is applied on.
  /// [principals] This subfield defines the identities that represent the clients.
  const AuthorizationBasicRule({
    required this.brokerResources,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerResources': pulumi.Input.mapInputValue<List<ResourceInfoDefinition>, List<Map<String, dynamic>>>(brokerResources, (value) => pulumi.Input.encodeList<ResourceInfoDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'principals': pulumi.Input.mapInputValue<PrincipalDefinition, Map<String, dynamic>>(principals, (value) => value.toMap()),
    };
  }

  factory AuthorizationBasicRule.fromMap(Map<String, dynamic> map) {
    return AuthorizationBasicRule(
      brokerResources: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceInfoDefinition>(map['brokerResources']!, (value) => ResourceInfoDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      principals: pulumi.Input.fromValue(PrincipalDefinition.fromMap((map['principals']! as Map).cast<String, dynamic>())),
    );
  }
}

