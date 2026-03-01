enum DependencyCondition {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueSkipped("Skipped"),
  valueCompleted("Completed");

  const DependencyCondition(this.value);
  final String value;

  static DependencyCondition fromValue(String value) {
    for (final item in DependencyCondition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DependencyCondition value: $value');
  }
}

