/// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
enum InstanceReadReplicasMode {
  readReplicasModeUnspecified("READ_REPLICAS_MODE_UNSPECIFIED"),
  readReplicasDisabled("READ_REPLICAS_DISABLED"),
  readReplicasEnabled("READ_REPLICAS_ENABLED");

  const InstanceReadReplicasMode(this.value);
  final String value;

  static InstanceReadReplicasMode fromValue(String value) {
    for (final item in InstanceReadReplicasMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceReadReplicasMode value: $value');
  }
}
