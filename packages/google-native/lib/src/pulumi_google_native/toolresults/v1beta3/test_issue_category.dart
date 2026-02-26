/// Category of issue. Required.
enum TestIssueCategory {
  unspecifiedCategory("unspecifiedCategory"),
  common("common"),
  robo("robo");

  const TestIssueCategory(this.value);
  final String value;

  static TestIssueCategory fromValue(String value) {
    for (final item in TestIssueCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestIssueCategory value: $value');
  }
}
