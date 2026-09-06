import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL mode used by a migration. Default SSL mode for 'PostgreSQLSingleServer' is 'VerifyFull'. Default SSL mode for other source types is 'Prefer'.
enum SslMode implements pulumi.PulumiEnum<String> {
  prefer("Prefer"),
  require("Require"),
  verifyCA("VerifyCA"),
  verifyFull("VerifyFull");

  const SslMode(this.wireValue);
  @override
  final String wireValue;

  static SslMode fromValue(String value) {
    for (final item in SslMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslMode value: $value');
  }
}
