import 'package:pulumi/pulumi.dart' as pulumi;

/// Sampling type.
enum SamplingType implements pulumi.PulumiEnum<String> {
  valueFixed("fixed");

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
