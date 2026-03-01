/// [Required] The algorithm used for generating hyperparameter values, along with configuration properties
enum SamplingAlgorithmType {
  valueGrid("Grid"),
  valueRandom("Random"),
  valueBayesian("Bayesian");

  const SamplingAlgorithmType(this.value);
  final String value;

  static SamplingAlgorithmType fromValue(String value) {
    for (final item in SamplingAlgorithmType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SamplingAlgorithmType value: $value');
  }
}

