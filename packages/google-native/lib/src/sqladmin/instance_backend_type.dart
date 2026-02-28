/// The backend type. `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that is not managed by Google. This property is read-only; use the `tier` property in the `settings` object to determine the database type.
enum InstanceBackendType {
  sqlBackendTypeUnspecified("SQL_BACKEND_TYPE_UNSPECIFIED"),
  firstGen("FIRST_GEN"),
  secondGen("SECOND_GEN"),
  external("EXTERNAL");

  const InstanceBackendType(this.value);
  final String value;

  static InstanceBackendType fromValue(String value) {
    for (final item in InstanceBackendType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceBackendType value: $value');
  }
}

