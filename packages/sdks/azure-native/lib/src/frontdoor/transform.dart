/// Describes what transforms are applied before matching
enum Transform {
  valueLowercase("Lowercase"),
  valueUppercase("Uppercase"),
  valueTrim("Trim"),
  valueUrlDecode("UrlDecode"),
  valueUrlEncode("UrlEncode"),
  valueRemoveNulls("RemoveNulls");

  const Transform(this.wireValue);
  final String wireValue;

  static Transform fromValue(String value) {
    for (final item in Transform.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Transform value: $value');
  }
}
