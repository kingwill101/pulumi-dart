/// Describes what transforms are applied before matching
enum Transform {
  lowercase("Lowercase"),
  uppercase("Uppercase"),
  trim("Trim"),
  urlDecode("UrlDecode"),
  urlEncode("UrlEncode"),
  removeNulls("RemoveNulls");

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

