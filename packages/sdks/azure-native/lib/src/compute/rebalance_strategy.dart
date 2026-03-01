/// Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
enum RebalanceStrategy {
  recreate("Recreate");

  const RebalanceStrategy(this.value);
  final String value;

  static RebalanceStrategy fromValue(String value) {
    for (final item in RebalanceStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RebalanceStrategy value: $value');
  }
}

