import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The algorithm used for generating hyperparameter values, along with configuration properties
enum SamplingAlgorithmType implements pulumi.PulumiEnum<String> {
  grid("Grid"),
  random("Random"),
  bayesian("Bayesian");

  const SamplingAlgorithmType(this.wireValue);
  @override
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
