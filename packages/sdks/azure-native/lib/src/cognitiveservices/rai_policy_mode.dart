import 'package:pulumi/pulumi.dart' as pulumi;

/// Rai policy mode. The enum value mapping is as below: Default = 0, Deferred=1, Blocking=2, Asynchronous_filter =3. Please use 'Asynchronous_filter' after 2025-06-01. It is the same as 'Deferred' in previous version.
enum RaiPolicyMode implements pulumi.PulumiEnum<String> {
  default_("Default"),
  deferred("Deferred"),
  blocking("Blocking"),
  asynchronousFilter("Asynchronous_filter");

  const RaiPolicyMode(this.wireValue);
  @override
  final String wireValue;

  static RaiPolicyMode fromValue(String value) {
    for (final item in RaiPolicyMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RaiPolicyMode value: $value');
  }
}
