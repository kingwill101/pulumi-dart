/// Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
enum RebalanceStrategy {
  recreate("Recreate");

  const RebalanceStrategy(this.wireValue);
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

