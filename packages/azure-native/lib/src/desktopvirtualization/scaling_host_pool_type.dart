/// HostPool type for desktop.
enum ScalingHostPoolType {
  valuePooled("Pooled");

  const ScalingHostPoolType(this.value);
  final String value;

  static ScalingHostPoolType fromValue(String value) {
    for (final item in ScalingHostPoolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScalingHostPoolType value: $value');
  }
}

