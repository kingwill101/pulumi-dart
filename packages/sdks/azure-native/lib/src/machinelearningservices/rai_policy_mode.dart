import 'package:pulumi/pulumi.dart' as pulumi;

/// Content Filters mode.
enum RaiPolicyMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueDeferred("Deferred"),
  valueBlocking("Blocking");

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
