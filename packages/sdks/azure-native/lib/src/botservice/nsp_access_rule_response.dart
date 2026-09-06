// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nsp_access_rule_properties_response.dart';

/// Information of Access Rule in a profile
class NspAccessRuleResponse {
  /// Name of the access rule
  final pulumi.Input<String?>? name;
  /// Properties of Access Rule
  final pulumi.Input<NspAccessRulePropertiesResponse> properties;

  /// Creates a new [NspAccessRuleResponse].
  /// [name] Name of the access rule
  /// [properties] Properties of Access Rule
  const NspAccessRuleResponse({
    this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<NspAccessRulePropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory NspAccessRuleResponse.fromMap(Map<String, dynamic> map) {
    return NspAccessRuleResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(NspAccessRulePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
