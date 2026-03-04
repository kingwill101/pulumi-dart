/// [Required] Type of deployment scaling algorithm
enum ScaleType {
  valueDefault("Default"),
  valueTargetUtilization("TargetUtilization");

  const ScaleType(this.wireValue);
  final String wireValue;

  static ScaleType fromValue(String value) {
    for (final item in ScaleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleType value: $value');
  }
}
