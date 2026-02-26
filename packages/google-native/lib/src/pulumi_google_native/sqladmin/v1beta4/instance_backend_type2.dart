/// The backend type. `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that is not managed by Google. This property is read-only; use the `tier` property in the `settings` object to determine the database type.
enum InstanceBackendType2 {
  sqlBackendTypeUnspecified("SQL_BACKEND_TYPE_UNSPECIFIED"),
  firstGen("FIRST_GEN"),
  secondGen("SECOND_GEN"),
  external("EXTERNAL");

  const InstanceBackendType2(this.value);
  final String value;

  static InstanceBackendType2 fromValue(String value) {
    for (final item in InstanceBackendType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceBackendType2 value: $value');
  }
}
