/// Determines whether BGP route propagation is enabled. Defaults to true.
enum DisableBgpRoutePropagation {
  valueFalse("False"),
  valueTrue("True");

  const DisableBgpRoutePropagation(this.wireValue);
  final String wireValue;

  static DisableBgpRoutePropagation fromValue(String value) {
    for (final item in DisableBgpRoutePropagation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DisableBgpRoutePropagation value: $value');
  }
}
