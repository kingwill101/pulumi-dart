/// [Required] Type of deployment scaling algorithm
enum ScaleType {
  valueDefault("Default"),
  valueTargetUtilization("TargetUtilization");

  const ScaleType(this.value);
  final String value;

  static ScaleType fromValue(String value) {
    for (final item in ScaleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleType value: $value');
  }
}

