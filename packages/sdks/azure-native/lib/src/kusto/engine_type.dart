/// The engine type
enum EngineType {
  valueV2("V2"),
  valueV3("V3");

  const EngineType(this.wireValue);
  final String wireValue;

  static EngineType fromValue(String value) {
    for (final item in EngineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineType value: $value');
  }
}

