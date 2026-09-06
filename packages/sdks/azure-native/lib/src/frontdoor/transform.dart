import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes what transforms are applied before matching
enum Transform implements pulumi.PulumiEnum<String> {
  lowercase("Lowercase"),
  uppercase("Uppercase"),
  trim("Trim"),
  urlDecode("UrlDecode"),
  urlEncode("UrlEncode"),
  removeNulls("RemoveNulls");

  const Transform(this.wireValue);
  @override
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
