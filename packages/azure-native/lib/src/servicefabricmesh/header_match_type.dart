/// how to match header value
enum HeaderMatchType {
  valueExact("exact");

  const HeaderMatchType(this.value);
  final String value;

  static HeaderMatchType fromValue(String value) {
    for (final item in HeaderMatchType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderMatchType value: $value');
  }
}

