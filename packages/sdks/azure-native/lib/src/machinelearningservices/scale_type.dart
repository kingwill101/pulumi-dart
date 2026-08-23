/// [Required] Type of deployment scaling algorithm
enum ScaleType {
  default_("Default"),
  targetUtilization("TargetUtilization");

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
