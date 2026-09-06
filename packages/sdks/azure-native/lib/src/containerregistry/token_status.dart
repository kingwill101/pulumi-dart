import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the token example enabled or disabled.
enum TokenStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const TokenStatus(this.wireValue);
  @override
  final String wireValue;

  static TokenStatus fromValue(String value) {
    for (final item in TokenStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TokenStatus value: $value');
  }
}
