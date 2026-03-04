/// Describes what transforms applied before matching.
enum TransformType {
  valueLowercase("Lowercase"),
  valueUppercase("Uppercase"),
  valueTrim("Trim"),
  valueUrlDecode("UrlDecode"),
  valueUrlEncode("UrlEncode"),
  valueRemoveNulls("RemoveNulls");

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
