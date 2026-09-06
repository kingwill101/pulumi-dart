import 'package:pulumi/pulumi.dart' as pulumi;

/// The specific type of random algorithm
enum RandomSamplingAlgorithmRule implements pulumi.PulumiEnum<String> {
  random("Random"),
  sobol("Sobol");

  const RandomSamplingAlgorithmRule(this.wireValue);
  @override
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
