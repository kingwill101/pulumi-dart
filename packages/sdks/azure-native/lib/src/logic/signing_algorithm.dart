/// The signing algorithm.
enum SigningAlgorithm {
  valueNotSpecified("NotSpecified"),
  valueDefault("Default"),
  valueSHA1("SHA1"),
  valueSHA2256("SHA2256"),
  valueSHA2384("SHA2384"),
  valueSHA2512("SHA2512");

  const SigningAlgorithm(this.value);
  final String value;

  static SigningAlgorithm fromValue(String value) {
    for (final item in SigningAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SigningAlgorithm value: $value');
  }
}

