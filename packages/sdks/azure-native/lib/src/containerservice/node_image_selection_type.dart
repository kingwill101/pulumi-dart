/// The node image upgrade type.
enum NodeImageSelectionType {
  latest("Latest"),
  consistent("Consistent"),
  custom("Custom");

  const NodeImageSelectionType(this.value);
  final String value;

  static NodeImageSelectionType fromValue(String value) {
    for (final item in NodeImageSelectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeImageSelectionType value: $value');
  }
}

