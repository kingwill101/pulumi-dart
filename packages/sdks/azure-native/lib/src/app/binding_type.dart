/// Custom Domain binding type.
enum BindingType {
  valueDisabled("Disabled"),
  valueSniEnabled("SniEnabled"),
  valueAuto("Auto");

  const BindingType(this.wireValue);
  final String wireValue;

  static BindingType fromValue(String value) {
    for (final item in BindingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BindingType value: $value');
  }
}

