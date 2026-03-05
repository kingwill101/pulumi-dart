/// Sampling type.
enum SamplingType {
  valueFixed("fixed");

  const SamplingType(this.wireValue);
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

