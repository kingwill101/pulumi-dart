/// Describes what transforms applied before matching.
enum TransformType {
  valueLowercase("Lowercase"),
  valueUppercase("Uppercase"),
  valueTrim("Trim"),
  valueUrlDecode("UrlDecode"),
  valueUrlEncode("UrlEncode"),
  valueRemoveNulls("RemoveNulls");

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

