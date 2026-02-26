/// Describe whether the function is 1st Gen or 2nd Gen.
enum FunctionEnvironment2 {
  environmentUnspecified("ENVIRONMENT_UNSPECIFIED"),
  gen1("GEN_1"),
  gen2("GEN_2");

  const FunctionEnvironment2(this.value);
  final String value;

  static FunctionEnvironment2 fromValue(String value) {
    for (final item in FunctionEnvironment2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionEnvironment2 value: $value');
  }
}
