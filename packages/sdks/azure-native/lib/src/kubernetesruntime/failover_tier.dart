import 'package:pulumi/pulumi.dart' as pulumi;

/// Failover speed: NA, Slow, Fast
enum FailoverTier implements pulumi.PulumiEnum<String> {
  notAvailable("NotAvailable"),
  slow("Slow"),
  fast("Fast"),
  super_("Super");

  const FailoverTier(this.wireValue);
  @override
  final String wireValue;

  static FailoverTier fromValue(String value) {
    for (final item in FailoverTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailoverTier value: $value');
  }
}
