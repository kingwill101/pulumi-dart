import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable DNS proxy, disabled by default
enum DNSProxy implements pulumi.PulumiEnum<String> {
  valueDISABLED("DISABLED"),
  valueENABLED("ENABLED");

  const DNSProxy(this.wireValue);
  @override
  final String wireValue;

  static DNSProxy fromValue(String value) {
    for (final item in DNSProxy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DNSProxy value: $value');
  }
}
