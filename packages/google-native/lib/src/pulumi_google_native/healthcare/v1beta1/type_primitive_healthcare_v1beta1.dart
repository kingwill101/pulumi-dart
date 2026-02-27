/// If this is a primitive type then this field is the type of the primitive For example, STRING. Leave unspecified for composite types.
enum TypePrimitiveHealthcareV1beta1 {
  primitiveUnspecified("PRIMITIVE_UNSPECIFIED"),
  string("STRING"),
  varies("VARIES"),
  unescapedString("UNESCAPED_STRING");

  const TypePrimitiveHealthcareV1beta1(this.value);
  final String value;

  static TypePrimitiveHealthcareV1beta1 fromValue(String value) {
    for (final item in TypePrimitiveHealthcareV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TypePrimitiveHealthcareV1beta1 value: $value');
  }
}
