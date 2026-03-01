// ignore_for_file: unused_element, unnecessary_cast

import 'inbound_natrule_properties_response.dart';

/// Inbound nat rule properties
class InboundNATRuleResponse {
  /// name of the inbound nat rule
  final String name;
  /// properties of the inbound nat rule
  final InboundNATRulePropertiesResponse properties;

  /// Creates a new [InboundNATRuleResponse].
  /// [name] name of the inbound nat rule
  /// [properties] properties of the inbound nat rule
  InboundNATRuleResponse({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory InboundNATRuleResponse.fromMap(Map<String, dynamic> map) {
    return InboundNATRuleResponse(
      name: map['name'] as String,
      properties: InboundNATRulePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

