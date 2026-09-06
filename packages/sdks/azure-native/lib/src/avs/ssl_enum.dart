import 'package:pulumi/pulumi.dart' as pulumi;

/// Protect LDAP communication using SSL certificate (LDAPS)
enum SslEnum implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const SslEnum(this.wireValue);
  @override
  final String wireValue;

  static SslEnum fromValue(String value) {
    for (final item in SslEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslEnum value: $value');
  }
}
