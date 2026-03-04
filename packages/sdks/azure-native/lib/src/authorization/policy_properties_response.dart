// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_properties_response_scope.dart';

/// Expanded info of resource scope
class PolicyPropertiesResponse {
  /// Details of the resource scope
  final pulumi.Input<PolicyPropertiesResponseScope> scope;

  /// Creates a new [PolicyPropertiesResponse].
  /// [scope] Details of the resource scope
  PolicyPropertiesResponse({required this.scope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope':
          pulumi.Input.mapInputValue<
            PolicyPropertiesResponseScope,
            Map<String, dynamic>
          >(scope, (value) => value.toMap()),
    };
  }

  factory PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesResponse(
      scope: pulumi.Input.fromValue(
        PolicyPropertiesResponseScope.fromMap(
          (map['scope']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
