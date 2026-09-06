import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable or disable ssl for scoring
enum SslConfigStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled"),
  auto("Auto");

  const SslConfigStatus(this.wireValue);
  @override
  final String wireValue;

  static SslConfigStatus fromValue(String value) {
    for (final item in SslConfigStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigStatus value: $value');
  }
}
