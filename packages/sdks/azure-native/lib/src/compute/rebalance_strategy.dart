import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
enum RebalanceStrategy implements pulumi.PulumiEnum<String> {
  recreate("Recreate");

  const RebalanceStrategy(this.wireValue);
  @override
  final String wireValue;

  static RebalanceStrategy fromValue(String value) {
    for (final item in RebalanceStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RebalanceStrategy value: $value');
  }
}
