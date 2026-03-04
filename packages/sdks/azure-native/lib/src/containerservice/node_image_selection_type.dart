/// The node image upgrade type.
enum NodeImageSelectionType {
  latest("Latest"),
  consistent("Consistent"),
  custom("Custom");

  const NodeImageSelectionType(this.wireValue);
  final String wireValue;

  static NodeImageSelectionType fromValue(String value) {
    for (final item in NodeImageSelectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeImageSelectionType value: $value');
  }
}
