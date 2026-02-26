/// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
enum InstanceType4 {
  databaseInstanceTypeUnspecified("DATABASE_INSTANCE_TYPE_UNSPECIFIED"),
  defaultDatabase("DEFAULT_DATABASE"),
  userDatabase("USER_DATABASE");

  const InstanceType4(this.value);
  final String value;

  static InstanceType4 fromValue(String value) {
    for (final item in InstanceType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceType4 value: $value');
  }
}
