/// The specific type of random algorithm
enum RandomSamplingAlgorithmRule {
  valueRandom("Random"),
  valueSobol("Sobol");

  const RandomSamplingAlgorithmRule(this.wireValue);
  final String wireValue;

  static RandomSamplingAlgorithmRule fromValue(String value) {
    for (final item in RandomSamplingAlgorithmRule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RandomSamplingAlgorithmRule value: $value');
  }
}
