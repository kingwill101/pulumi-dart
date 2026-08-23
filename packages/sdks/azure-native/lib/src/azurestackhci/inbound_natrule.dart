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
  const InboundNATRule({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(InboundNATRuleProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
