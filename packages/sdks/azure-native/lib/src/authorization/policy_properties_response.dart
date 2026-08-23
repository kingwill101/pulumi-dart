// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_properties_scope_response.dart';

/// Expanded info of resource scope
class PolicyPropertiesResponse {
  /// Details of the resource scope
  final pulumi.Input<PolicyPropertiesScopeResponse> scope;

  /// Creates a new [PolicyPropertiesResponse].
  /// [scope] Details of the resource scope
  const PolicyPropertiesResponse({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': pulumi.Input.mapInputValue<PolicyPropertiesScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponse(
      scope: pulumi.Input.fromValue(PolicyPropertiesScopeResponse.fromMap((map['scope']! as Map).cast<String, dynamic>())),
    );
  }
}
