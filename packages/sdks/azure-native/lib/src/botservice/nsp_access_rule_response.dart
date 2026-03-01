// ignore_for_file: unused_element, unnecessary_cast

import 'nsp_access_rule_properties_response.dart';

/// Information of Access Rule in a profile
class NspAccessRuleResponse {
  /// Name of the access rule
  final String? name;
  /// Properties of Access Rule
  final NspAccessRulePropertiesResponse properties;

  /// Creates a new [NspAccessRuleResponse].
  /// [name] Name of the access rule
  /// [properties] Properties of Access Rule
  NspAccessRuleResponse({
    this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': properties.toMap(),
    };
  }

  factory NspAccessRuleResponse.fromMap(Map<String, dynamic> map) {
    return NspAccessRuleResponse(
      name: map['name'] == null ? null : map['name'] as String,
      properties: NspAccessRulePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

