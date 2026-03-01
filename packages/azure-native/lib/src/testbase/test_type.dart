/// The type of the test.
enum TestType {
  valueOutOfBoxTest("OutOfBoxTest"),
  valueFunctionalTest("FunctionalTest"),
  valueFlowDrivenTest("FlowDrivenTest");

  const TestType(this.value);
  final String value;

  static TestType fromValue(String value) {
    for (final item in TestType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestType value: $value');
  }
}

