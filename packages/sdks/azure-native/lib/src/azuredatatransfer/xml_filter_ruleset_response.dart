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
  XmlFilterRulesetResponse({
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
      defaultNamespace: map['defaultNamespace'] == null ? null : (map['defaultNamespace']! as String).input(),
      reference: map['reference'] == null ? null : (map['reference']! as String).input(),
      schema: map['schema'] == null ? null : (map['schema']! as String).input(),
    );
  }
}

