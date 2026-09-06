import 'package:pulumi/pulumi.dart' as pulumi;

/// Strategy for calculating subnet ranges from the subnet specifications.
enum SubnetAllocationStrategy implements pulumi.PulumiEnum<String> {
  valueLegacy("Legacy"),
  valueAuto("Auto"),
  valueAutoMerge("AutoMerge"),
  valueExact("Exact");

  const SubnetAllocationStrategy(this.wireValue);
  @override
  final String wireValue;

  static SubnetAllocationStrategy fromValue(String value) {
    for (final item in SubnetAllocationStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetAllocationStrategy value: $value');
  }
}
