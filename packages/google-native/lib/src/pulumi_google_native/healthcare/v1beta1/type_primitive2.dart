/// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
enum TypePrimitive2 {
  primitiveUnspecified("PRIMITIVE_UNSPECIFIED"),
  string("STRING"),
  varies("VARIES"),
  unescapedString("UNESCAPED_STRING");

  const TypePrimitive2(this.value);
  final String value;

  static TypePrimitive2 fromValue(String value) {
    for (final item in TypePrimitive2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TypePrimitive2 value: $value');
  }
}
