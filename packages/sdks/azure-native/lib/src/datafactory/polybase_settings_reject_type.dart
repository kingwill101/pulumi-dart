/// Reject type.
enum PolybaseSettingsRejectType {
  valueValue("value"),
  valuePercentage("percentage");

  const PolybaseSettingsRejectType(this.value);
  final String value;

  static PolybaseSettingsRejectType fromValue(String value) {
    for (final item in PolybaseSettingsRejectType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolybaseSettingsRejectType value: $value');
  }
}

