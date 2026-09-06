import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the sampling type.
enum SamplingType implements pulumi.PulumiEnum<String> {
  average("Average"),
  sum("Sum"),
  count("Count"),
  min("Min"),
  max("Max");

  const SamplingType(this.wireValue);
  @override
  final String wireValue;

  static SamplingType fromValue(String value) {
    for (final item in SamplingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SamplingType value: $value');
  }
}
