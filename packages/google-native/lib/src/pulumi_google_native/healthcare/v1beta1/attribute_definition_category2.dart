/// Required. The category of the attribute. The value of this field cannot be changed after creation.
enum AttributeDefinitionCategory2 {
  categoryUnspecified("CATEGORY_UNSPECIFIED"),
  resource("RESOURCE"),
  request("REQUEST");

  const AttributeDefinitionCategory2(this.value);
  final String value;

  static AttributeDefinitionCategory2 fromValue(String value) {
    for (final item in AttributeDefinitionCategory2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttributeDefinitionCategory2 value: $value');
  }
}
