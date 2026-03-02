// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_natrule_properties.dart';

/// Inbound nat rule properties
class InboundNATRule {
  /// name of the inbound nat rule
  final pulumi.Input<String> name;
  /// properties of the inbound nat rule
  final pulumi.Input<InboundNATRuleProperties> properties;

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
      'properties': pulumi.Input.mapInputValue<InboundNATRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory InboundNATRule.fromMap(Map<String, dynamic> map) {
    return InboundNATRule(
      name: (map['name'] as String).input(),
      properties: (InboundNATRuleProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

