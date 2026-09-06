import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy for serving stale data. See [cache plugin](https://coredns.io/plugins/cache) for more information.
enum LocalDNSServeStale implements pulumi.PulumiEnum<String> {
  valueVerify("Verify"),
  valueImmediate("Immediate"),
  valueDisable("Disable");

  const LocalDNSServeStale(this.wireValue);
  @override
  final String wireValue;

  static LocalDNSServeStale fromValue(String value) {
    for (final item in LocalDNSServeStale.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalDNSServeStale value: $value');
  }
}
