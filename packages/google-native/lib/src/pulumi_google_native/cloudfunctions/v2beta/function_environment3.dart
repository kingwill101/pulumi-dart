/// Describe whether the function is 1st Gen or 2nd Gen.
enum FunctionEnvironment3 {
  environmentUnspecified("ENVIRONMENT_UNSPECIFIED"),
  gen1("GEN_1"),
  gen2("GEN_2");

  const FunctionEnvironment3(this.value);
  final String value;

  static FunctionEnvironment3 fromValue(String value) {
    for (final item in FunctionEnvironment3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionEnvironment3 value: $value');
  }
}
