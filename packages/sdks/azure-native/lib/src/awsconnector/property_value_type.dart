/// Property value
enum PropertyValueType {
  pLAINTEXT("PLAIN_TEXT"),
  sTRINGIFIEDJSON("STRINGIFIED_JSON");

  const PropertyValueType(this.wireValue);
  final String wireValue;

  static PropertyValueType fromValue(String value) {
    for (final item in PropertyValueType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertyValueType value: $value');
  }
}

