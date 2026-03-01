// ignore_for_file: unused_element, unnecessary_cast

import 'policy_properties_response_scope.dart';

/// Expanded info of resource scope
class PolicyPropertiesResponse {
  /// Details of the resource scope
  final PolicyPropertiesResponseScope scope;

  /// Creates a new [PolicyPropertiesResponse].
  /// [scope] Details of the resource scope
  PolicyPropertiesResponse({
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': scope.toMap(),
    };
  }

  factory PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponse(
      scope: PolicyPropertiesResponseScope.fromMap((map['scope'] as Map).cast<String, dynamic>()),
    );
  }
}

