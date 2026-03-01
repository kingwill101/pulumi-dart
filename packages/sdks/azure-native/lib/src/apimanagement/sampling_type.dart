/// Sampling type.
enum SamplingType {
  valueFixed("fixed");

  const SamplingType(this.value);
  final String value;

  static SamplingType fromValue(String value) {
    for (final item in SamplingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SamplingType value: $value');
  }
}

