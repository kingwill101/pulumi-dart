/// Property value
enum TargetHealthStateEnum {
  draining("draining"),
  healthy("healthy"),
  initial("initial"),
  unavailable("unavailable"),
  unhealthy("unhealthy"),
  unhealthyDraining("unhealthy.draining"),
  unused("unused");

  const TargetHealthStateEnum(this.wireValue);
  final String wireValue;

  static TargetHealthStateEnum fromValue(String value) {
    for (final item in TargetHealthStateEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetHealthStateEnum value: $value');
  }
}

