/// Defines the method for referencing the xml schema.
enum XmlReferenceType {
  inline("Inline");

  const XmlReferenceType(this.value);
  final String value;

  static XmlReferenceType fromValue(String value) {
    for (final item in XmlReferenceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown XmlReferenceType value: $value');
  }
}

