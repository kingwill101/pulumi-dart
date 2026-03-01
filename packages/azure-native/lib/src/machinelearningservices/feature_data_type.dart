/// Specifies the data type
enum FeatureDataType {
  valueString("String"),
  valueInteger("Integer"),
  valueLong("Long"),
  valueFloat("Float"),
  valueDouble("Double"),
  valueBinary("Binary"),
  valueDatetime("Datetime"),
  valueBoolean("Boolean");

  const FeatureDataType(this.value);
  final String value;

  static FeatureDataType fromValue(String value) {
    for (final item in FeatureDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureDataType value: $value');
  }
}

