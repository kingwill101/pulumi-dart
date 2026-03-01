/// Describes what transforms were applied before matching.
enum TransformType {
  lowercase("Lowercase"),
  uppercase("Uppercase"),
  trim("Trim"),
  urlDecode("UrlDecode"),
  urlEncode("UrlEncode"),
  removeNulls("RemoveNulls");

  const TransformType(this.value);
  final String value;

  static TransformType fromValue(String value) {
    for (final item in TransformType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformType value: $value');
  }
}

