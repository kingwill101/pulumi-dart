/// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
enum InstanceReadReplicasMode2 {
  readReplicasModeUnspecified("READ_REPLICAS_MODE_UNSPECIFIED"),
  readReplicasDisabled("READ_REPLICAS_DISABLED"),
  readReplicasEnabled("READ_REPLICAS_ENABLED");

  const InstanceReadReplicasMode2(this.value);
  final String value;

  static InstanceReadReplicasMode2 fromValue(String value) {
    for (final item in InstanceReadReplicasMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceReadReplicasMode2 value: $value');
  }
}
