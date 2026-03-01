/// Type of the backend. A backend can be either Single or Pool.
enum BackendType {
  valueSingle("Single"),
  valuePool("Pool");

  const BackendType(this.value);
  final String value;

  static BackendType fromValue(String value) {
    for (final item in BackendType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendType value: $value');
  }
}

