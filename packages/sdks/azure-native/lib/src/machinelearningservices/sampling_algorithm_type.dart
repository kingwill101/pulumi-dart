/// [Required] The algorithm used for generating hyperparameter values, along with configuration properties
enum SamplingAlgorithmType {
  grid("Grid"),
  random("Random"),
  bayesian("Bayesian");

  const SamplingAlgorithmType(this.wireValue);
  final String wireValue;

  static SamplingAlgorithmType fromValue(String value) {
    for (final item in SamplingAlgorithmType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SamplingAlgorithmType value: $value');
  }
}
