/// The instance type.
enum InstanceInstanceTypeSqladminV1beta4 {
  sqlInstanceTypeUnspecified("SQL_INSTANCE_TYPE_UNSPECIFIED"),
  cloudSqlInstance("CLOUD_SQL_INSTANCE"),
  onPremisesInstance("ON_PREMISES_INSTANCE"),
  readReplicaInstance("READ_REPLICA_INSTANCE");

  const InstanceInstanceTypeSqladminV1beta4(this.value);
  final String value;

  static InstanceInstanceTypeSqladminV1beta4 fromValue(String value) {
    for (final item in InstanceInstanceTypeSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceInstanceTypeSqladminV1beta4 value: $value');
  }
}
