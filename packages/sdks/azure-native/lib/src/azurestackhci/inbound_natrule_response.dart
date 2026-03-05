// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_natrule_properties_response.dart';

/// Inbound nat rule properties
class InboundNATRuleResponse {
  /// name of the inbound nat rule
  final pulumi.Input<String> name;
  /// properties of the inbound nat rule
  final pulumi.Input<InboundNATRulePropertiesResponse> properties;

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
      'properties': pulumi.Input.mapInputValue<InboundNATRulePropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory InboundNATRuleResponse.fromMap(Map<String, dynamic> map) {
    return InboundNATRuleResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(InboundNATRulePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}

