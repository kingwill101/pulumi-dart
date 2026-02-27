/// Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED.
enum InstanceReadReplicasModeRedisV1beta1 {
  readReplicasModeUnspecified("READ_REPLICAS_MODE_UNSPECIFIED"),
  readReplicasDisabled("READ_REPLICAS_DISABLED"),
  readReplicasEnabled("READ_REPLICAS_ENABLED");

  const InstanceReadReplicasModeRedisV1beta1(this.value);
  final String value;

  static InstanceReadReplicasModeRedisV1beta1 fromValue(String value) {
    for (final item in InstanceReadReplicasModeRedisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceReadReplicasModeRedisV1beta1 value: $value');
  }
}
