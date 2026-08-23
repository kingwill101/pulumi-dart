/// HostPool type for desktop.
enum ScalingHostPoolType {
  valuePooled("Pooled");

  const ScalingHostPoolType(this.wireValue);
  final String wireValue;

  static ScalingHostPoolType fromValue(String value) {
    for (final item in ScalingHostPoolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScalingHostPoolType value: $value');
  }
}
