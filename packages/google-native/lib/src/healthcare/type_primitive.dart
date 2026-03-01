/// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
enum TypePrimitive {
  primitiveUnspecified("PRIMITIVE_UNSPECIFIED"),
  string("STRING"),
  varies("VARIES"),
  unescapedString("UNESCAPED_STRING");

  const TypePrimitive(this.value);
  final String value;

  static TypePrimitive fromValue(String value) {
    for (final item in TypePrimitive.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TypePrimitive value: $value');
  }
}
