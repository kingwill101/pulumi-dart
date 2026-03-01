/// The implementation effort required to remediate this assessment
enum ImplementationEffort {
  valueLow("Low"),
  valueModerate("Moderate"),
  valueHigh("High");

  const ImplementationEffort(this.value);
  final String value;

  static ImplementationEffort fromValue(String value) {
    for (final item in ImplementationEffort.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImplementationEffort value: $value');
  }
}

