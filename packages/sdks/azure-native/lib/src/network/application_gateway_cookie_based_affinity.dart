import 'package:pulumi/pulumi.dart' as pulumi;

/// Cookie based affinity.
enum ApplicationGatewayCookieBasedAffinity implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ApplicationGatewayCookieBasedAffinity(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewayCookieBasedAffinity fromValue(String value) {
    for (final item in ApplicationGatewayCookieBasedAffinity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayCookieBasedAffinity value: $value');
  }
}
