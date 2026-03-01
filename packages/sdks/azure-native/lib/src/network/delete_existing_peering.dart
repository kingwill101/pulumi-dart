/// Flag if need to remove current existing peerings.
enum DeleteExistingPeering {
  valueFalse("False"),
  valueTrue("True");

  const DeleteExistingPeering(this.value);
  final String value;

  static DeleteExistingPeering fromValue(String value) {
    for (final item in DeleteExistingPeering.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeleteExistingPeering value: $value');
  }
}

