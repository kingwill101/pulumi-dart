/// The encoding of the stream being received.
enum StreamEncodingType {
  nop("nop"),
  utf8("utf-8"),
  utf16le("utf-16le"),
  utf16be("utf-16be"),
  ascii("ascii"),
  big5("big5");

  const StreamEncodingType(this.value);
  final String value;

  static StreamEncodingType fromValue(String value) {
    for (final item in StreamEncodingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StreamEncodingType value: $value');
  }
}

