/// Property value
enum TargetHealthStateEnum {
  draining("draining"),
  healthy("healthy"),
  initial("initial"),
  unavailable("unavailable"),
  unhealthy("unhealthy"),
  unhealthyDraining("unhealthy.draining"),
  unused("unused");

  const TargetHealthStateEnum(this.value);
  final String value;

  static TargetHealthStateEnum fromValue(String value) {
    for (final item in TargetHealthStateEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetHealthStateEnum value: $value');
  }
}

