/// Type of the backend. A backend can be either Single or Pool.
enum BackendType {
  valueSingle("Single"),
  valuePool("Pool");

  const BackendType(this.wireValue);
  final String wireValue;

  static BackendType fromValue(String value) {
    for (final item in BackendType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendType value: $value');
  }
}

