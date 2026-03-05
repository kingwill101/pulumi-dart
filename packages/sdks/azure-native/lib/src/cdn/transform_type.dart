/// Describes what transforms were applied before matching.
enum TransformType {
  lowercase("Lowercase"),
  uppercase("Uppercase"),
  trim("Trim"),
  urlDecode("UrlDecode"),
  urlEncode("UrlEncode"),
  removeNulls("RemoveNulls");

  const TransformType(this.wireValue);
  final String wireValue;

  static TransformType fromValue(String value) {
    for (final item in TransformType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformType value: $value');
  }
}

