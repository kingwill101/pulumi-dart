import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the method for referencing the xml schema.
enum XmlReferenceType implements pulumi.PulumiEnum<String> {
  inline("Inline");

  const XmlReferenceType(this.wireValue);
  @override
  final String wireValue;

  static XmlReferenceType fromValue(String value) {
    for (final item in XmlReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown XmlReferenceType value: $value');
  }
}
