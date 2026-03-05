/// Type of optimizer.
enum StochasticOptimizer {
  valueNone("None"),
  valueSgd("Sgd"),
  valueAdam("Adam"),
  valueAdamw("Adamw");

  const StochasticOptimizer(this.wireValue);
  final String wireValue;

  static StochasticOptimizer fromValue(String value) {
    for (final item in StochasticOptimizer.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StochasticOptimizer value: $value');
  }
}

