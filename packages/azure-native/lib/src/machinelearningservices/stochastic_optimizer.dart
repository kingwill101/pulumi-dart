/// Type of optimizer.
enum StochasticOptimizer {
  valueNone("None"),
  valueSgd("Sgd"),
  valueAdam("Adam"),
  valueAdamw("Adamw");

  const StochasticOptimizer(this.value);
  final String value;

  static StochasticOptimizer fromValue(String value) {
    for (final item in StochasticOptimizer.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StochasticOptimizer value: $value');
  }
}

