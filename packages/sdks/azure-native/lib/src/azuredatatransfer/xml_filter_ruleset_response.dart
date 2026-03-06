// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules for filtering XML content using XSD schemas.
class XmlFilterRulesetResponse {
  /// The default XML namespace used for schema validation.
  final pulumi.Input<String>? defaultNamespace;
  /// Defines the method for referencing the xml schema.
  final pulumi.Input<String>? reference;
  /// The inline XSD schema to be used for validation.
  final pulumi.Input<String>? schema;

  /// Creates a new [XmlFilterRulesetResponse].
  /// [defaultNamespace] The default XML namespace used for schema validation.
  /// [reference] Defines the method for referencing the xml schema.
  /// [schema] The inline XSD schema to be used for validation.
  const XmlFilterRulesetResponse({
    this.defaultNamespace,
    this.reference,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultNamespace': ?defaultNamespace,
      'reference': ?reference,
      'schema': ?schema,
    };
  }

  factory XmlFilterRulesetResponse.fromMap(Map<String, dynamic> map) {
    return XmlFilterRulesetResponse(
      defaultNamespace: (() { final guardedValue = map['defaultNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

