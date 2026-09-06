// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules for filtering XML content using XSD schemas.
class XmlFilterRuleset {
  /// The default XML namespace used for schema validation.
  final pulumi.Input<String?>? defaultNamespace;
  /// Defines the method for referencing the xml schema.
  final pulumi.Input<dynamic>? reference;
  /// The inline XSD schema to be used for validation.
  final pulumi.Input<String?>? schema;

  /// Creates a new [XmlFilterRuleset].
  /// [defaultNamespace] The default XML namespace used for schema validation.
  /// [reference] Defines the method for referencing the xml schema.
  /// [schema] The inline XSD schema to be used for validation.
  const XmlFilterRuleset({
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

  factory XmlFilterRuleset.fromMap(Map<String, dynamic> map) {
    return XmlFilterRuleset(
      defaultNamespace: (() { final guardedValue = map['defaultNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
