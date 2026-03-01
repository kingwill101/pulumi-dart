/// Determines whether BGP route propagation is enabled. Defaults to true.
enum DisableBgpRoutePropagation {
  valueFalse("False"),
  valueTrue("True");

  const DisableBgpRoutePropagation(this.value);
  final String value;

  static DisableBgpRoutePropagation fromValue(String value) {
    for (final item in DisableBgpRoutePropagation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DisableBgpRoutePropagation value: $value');
  }
}

