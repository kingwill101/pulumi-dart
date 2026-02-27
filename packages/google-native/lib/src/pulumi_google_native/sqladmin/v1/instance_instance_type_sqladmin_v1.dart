/// The instance type.
enum InstanceInstanceTypeSqladminV1 {
  sqlInstanceTypeUnspecified("SQL_INSTANCE_TYPE_UNSPECIFIED"),
  cloudSqlInstance("CLOUD_SQL_INSTANCE"),
  onPremisesInstance("ON_PREMISES_INSTANCE"),
  readReplicaInstance("READ_REPLICA_INSTANCE");

  const InstanceInstanceTypeSqladminV1(this.value);
  final String value;

  static InstanceInstanceTypeSqladminV1 fromValue(String value) {
    for (final item in InstanceInstanceTypeSqladminV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceTypeSqladminV1 value: $value');
  }
}
