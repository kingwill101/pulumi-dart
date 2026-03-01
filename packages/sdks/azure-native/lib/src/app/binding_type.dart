/// Custom Domain binding type.
enum BindingType {
  valueDisabled("Disabled"),
  valueSniEnabled("SniEnabled"),
  valueAuto("Auto");

  const BindingType(this.value);
  final String value;

  static BindingType fromValue(String value) {
    for (final item in BindingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BindingType value: $value');
  }
}

