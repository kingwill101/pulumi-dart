/// Purpose of this test line, e.g. automated or manual testing
enum TestLinePurpose {
  manual("Manual"),
  automated("Automated");

  const TestLinePurpose(this.value);
  final String value;

  static TestLinePurpose fromValue(String value) {
    for (final item in TestLinePurpose.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestLinePurpose value: $value');
  }
}

