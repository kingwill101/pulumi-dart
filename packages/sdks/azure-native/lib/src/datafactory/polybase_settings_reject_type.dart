/// Reject type.
enum PolybaseSettingsRejectType {
  valueValue("value"),
  valuePercentage("percentage");

  const PolybaseSettingsRejectType(this.wireValue);
  final String wireValue;

  static PolybaseSettingsRejectType fromValue(String value) {
    for (final item in PolybaseSettingsRejectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolybaseSettingsRejectType value: $value');
  }
}

