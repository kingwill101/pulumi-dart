import 'package:pulumi/pulumi.dart' as pulumi;

/// The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
enum ScaleSetEvictionPolicy implements pulumi.PulumiEnum<String> {
  valueDelete("Delete"),
  valueDeallocate("Deallocate");

  const ScaleSetEvictionPolicy(this.wireValue);
  @override
  final String wireValue;

  static ScaleSetEvictionPolicy fromValue(String value) {
    for (final item in ScaleSetEvictionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleSetEvictionPolicy value: $value');
  }
}
