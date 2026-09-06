import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Prefix Type that needs to be matched.
enum PrefixType implements pulumi.PulumiEnum<String> {
  valuePrefix("Prefix"),
  valueLongestPrefix("LongestPrefix");

  const PrefixType(this.wireValue);
  @override
  final String wireValue;

  static PrefixType fromValue(String value) {
    for (final item in PrefixType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrefixType value: $value');
  }
}
