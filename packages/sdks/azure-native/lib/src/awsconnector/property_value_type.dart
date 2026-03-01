/// Property value
enum PropertyValueType {
  pLAINTEXT("PLAIN_TEXT"),
  sTRINGIFIEDJSON("STRINGIFIED_JSON");

  const PropertyValueType(this.value);
  final String value;

  static PropertyValueType fromValue(String value) {
    for (final item in PropertyValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertyValueType value: $value');
  }
}

