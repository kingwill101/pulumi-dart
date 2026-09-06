import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabled DNS proxy type, disabled by default
enum EnabledDNSType implements pulumi.PulumiEnum<String> {
  valueCUSTOM("CUSTOM"),
  valueAZURE("AZURE");

  const EnabledDNSType(this.wireValue);
  @override
  final String wireValue;

  static EnabledDNSType fromValue(String value) {
    for (final item in EnabledDNSType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnabledDNSType value: $value');
  }
}
