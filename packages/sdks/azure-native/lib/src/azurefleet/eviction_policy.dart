import 'package:pulumi/pulumi.dart' as pulumi;

/// Eviction Policy to follow when evicting Spot VMs.
enum EvictionPolicy implements pulumi.PulumiEnum<String> {
  delete("Delete"),
  deallocate("Deallocate");

  const EvictionPolicy(this.wireValue);
  @override
  final String wireValue;

  static EvictionPolicy fromValue(String value) {
    for (final item in EvictionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvictionPolicy value: $value');
  }
}
