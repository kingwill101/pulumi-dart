import 'package:pulumi/pulumi.dart' as pulumi;

/// The signing or hashing algorithm.
enum HashingAlgorithm implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valueNone("None"),
  valueMD5("MD5"),
  valueSHA1("SHA1"),
  valueSHA2256("SHA2256"),
  valueSHA2384("SHA2384"),
  valueSHA2512("SHA2512");

  const HashingAlgorithm(this.wireValue);
  @override
  final String wireValue;

  static HashingAlgorithm fromValue(String value) {
    for (final item in HashingAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HashingAlgorithm value: $value');
  }
}
