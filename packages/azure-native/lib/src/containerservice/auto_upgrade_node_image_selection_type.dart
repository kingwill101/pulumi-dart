/// The node image upgrade type.
enum AutoUpgradeNodeImageSelectionType {
  latest("Latest"),
  consistent("Consistent");

  const AutoUpgradeNodeImageSelectionType(this.value);
  final String value;

  static AutoUpgradeNodeImageSelectionType fromValue(String value) {
    for (final item in AutoUpgradeNodeImageSelectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUpgradeNodeImageSelectionType value: $value');
  }
}

