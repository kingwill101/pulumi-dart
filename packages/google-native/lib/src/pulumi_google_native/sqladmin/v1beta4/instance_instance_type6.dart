/// The instance type.
enum InstanceInstanceType6 {
  sqlInstanceTypeUnspecified("SQL_INSTANCE_TYPE_UNSPECIFIED"),
  cloudSqlInstance("CLOUD_SQL_INSTANCE"),
  onPremisesInstance("ON_PREMISES_INSTANCE"),
  readReplicaInstance("READ_REPLICA_INSTANCE");

  const InstanceInstanceType6(this.value);
  final String value;

  static InstanceInstanceType6 fromValue(String value) {
    for (final item in InstanceInstanceType6.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType6 value: $value');
  }
}
