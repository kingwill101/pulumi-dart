/// The instance type.
enum InstanceInstanceType5 {
  sqlInstanceTypeUnspecified("SQL_INSTANCE_TYPE_UNSPECIFIED"),
  cloudSqlInstance("CLOUD_SQL_INSTANCE"),
  onPremisesInstance("ON_PREMISES_INSTANCE"),
  readReplicaInstance("READ_REPLICA_INSTANCE");

  const InstanceInstanceType5(this.value);
  final String value;

  static InstanceInstanceType5 fromValue(String value) {
    for (final item in InstanceInstanceType5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType5 value: $value');
  }
}
