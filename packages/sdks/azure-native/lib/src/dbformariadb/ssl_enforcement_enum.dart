import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable ssl enforcement or not when connect to server.
enum SslEnforcementEnum implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const SslEnforcementEnum(this.wireValue);
  @override
  final String wireValue;

  static SslEnforcementEnum fromValue(String value) {
    for (final item in SslEnforcementEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslEnforcementEnum value: $value');
  }
}
