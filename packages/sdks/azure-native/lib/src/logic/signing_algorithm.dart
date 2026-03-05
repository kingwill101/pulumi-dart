/// The signing algorithm.
enum SigningAlgorithm {
  valueNotSpecified("NotSpecified"),
  valueDefault("Default"),
  valueSHA1("SHA1"),
  valueSHA2256("SHA2256"),
  valueSHA2384("SHA2384"),
  valueSHA2512("SHA2512");

  const SigningAlgorithm(this.wireValue);
  final String wireValue;

  static SigningAlgorithm fromValue(String value) {
    for (final item in SigningAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SigningAlgorithm value: $value');
  }
}

