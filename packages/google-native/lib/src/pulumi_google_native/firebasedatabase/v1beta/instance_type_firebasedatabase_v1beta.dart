/// Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also the default when omitted.
enum InstanceTypeFirebasedatabaseV1beta {
  databaseInstanceTypeUnspecified("DATABASE_INSTANCE_TYPE_UNSPECIFIED"),
  defaultDatabase("DEFAULT_DATABASE"),
  userDatabase("USER_DATABASE");

  const InstanceTypeFirebasedatabaseV1beta(this.value);
  final String value;

  static InstanceTypeFirebasedatabaseV1beta fromValue(String value) {
    for (final item in InstanceTypeFirebasedatabaseV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown InstanceTypeFirebasedatabaseV1beta value: $value');
  }
}
