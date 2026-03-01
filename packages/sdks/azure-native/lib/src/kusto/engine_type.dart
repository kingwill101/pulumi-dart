/// The engine type
enum EngineType {
  valueV2("V2"),
  valueV3("V3");

  const EngineType(this.value);
  final String value;

  static EngineType fromValue(String value) {
    for (final item in EngineType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineType value: $value');
  }
}

