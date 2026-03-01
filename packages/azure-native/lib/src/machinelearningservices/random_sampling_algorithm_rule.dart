/// The specific type of random algorithm
enum RandomSamplingAlgorithmRule {
  valueRandom("Random"),
  valueSobol("Sobol");

  const RandomSamplingAlgorithmRule(this.value);
  final String value;

  static RandomSamplingAlgorithmRule fromValue(String value) {
    for (final item in RandomSamplingAlgorithmRule.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RandomSamplingAlgorithmRule value: $value');
  }
}

