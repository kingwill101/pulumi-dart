// ignore_for_file: unused_element, unnecessary_cast


/// Rules for filtering XML content using XSD schemas.
class XmlFilterRuleset {
  /// The default XML namespace used for schema validation.
  final String? defaultNamespace;
  /// Defines the method for referencing the xml schema.
  final String? reference;
  /// The inline XSD schema to be used for validation.
  final String? schema;

  /// Creates a new [XmlFilterRuleset].
  /// [defaultNamespace] The default XML namespace used for schema validation.
  /// [reference] Defines the method for referencing the xml schema.
  /// [schema] The inline XSD schema to be used for validation.
  XmlFilterRuleset({
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
      defaultNamespace: map['defaultNamespace'] == null ? null : map['defaultNamespace'] as String,
      reference: map['reference'] == null ? null : map['reference'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}

