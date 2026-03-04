enum DependencyCondition {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueSkipped("Skipped"),
  valueCompleted("Completed");

  const DependencyCondition(this.wireValue);
  final String wireValue;

  static DependencyCondition fromValue(String value) {
    for (final item in DependencyCondition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DependencyCondition value: $value');
  }
}
