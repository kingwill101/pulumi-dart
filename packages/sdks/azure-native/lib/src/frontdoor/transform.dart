/// Describes what transforms are applied before matching
enum Transform {
  valueLowercase("Lowercase"),
  valueUppercase("Uppercase"),
  valueTrim("Trim"),
  valueUrlDecode("UrlDecode"),
  valueUrlEncode("UrlEncode"),
  valueRemoveNulls("RemoveNulls");

  const Transform(this.value);
  final String value;

  static Transform fromValue(String value) {
    for (final item in Transform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Transform value: $value');
  }
}

