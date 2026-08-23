/// Specifies the data type
enum FeatureDataType {
  string_("String"),
  integer("Integer"),
  long("Long"),
  float("Float"),
  double_("Double"),
  binary("Binary"),
  datetime("Datetime"),
  boolean("Boolean");

  const FeatureDataType(this.wireValue);
  final String wireValue;

  static FeatureDataType fromValue(String value) {
    for (final item in FeatureDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureDataType value: $value');
  }
}
