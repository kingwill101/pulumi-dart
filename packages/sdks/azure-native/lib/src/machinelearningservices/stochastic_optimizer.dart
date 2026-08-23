/// Stochastic optimizer for image models.
enum StochasticOptimizer {
  none("None"),
  sgd("Sgd"),
  adam("Adam"),
  adamw("Adamw");

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
