// ignore_for_file: unused_element, unnecessary_cast

import 'inbound_natrule_properties.dart';

/// Inbound nat rule properties
class InboundNATRule {
  /// name of the inbound nat rule
  final String name;
  /// properties of the inbound nat rule
  final InboundNATRuleProperties properties;

  /// Creates a new [InboundNATRule].
  /// [name] name of the inbound nat rule
  /// [properties] properties of the inbound nat rule
  InboundNATRule({
    required this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties.toMap(),
    };
  }

  factory InboundNATRule.fromMap(Map<String, dynamic> map) {
    return InboundNATRule(
      name: map['name'] as String,
      properties: InboundNATRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

