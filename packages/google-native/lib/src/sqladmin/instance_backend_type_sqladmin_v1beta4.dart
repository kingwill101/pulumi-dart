/// The backend type. `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that is not managed by Google. This property is read-only; use the `tier` property in the `settings` object to determine the database type.
enum InstanceBackendTypeSqladminV1beta4 {
  sqlBackendTypeUnspecified("SQL_BACKEND_TYPE_UNSPECIFIED"),
  firstGen("FIRST_GEN"),
  secondGen("SECOND_GEN"),
  external("EXTERNAL");

  const InstanceBackendTypeSqladminV1beta4(this.value);
  final String value;

  static InstanceBackendTypeSqladminV1beta4 fromValue(String value) {
    for (final item in InstanceBackendTypeSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceBackendTypeSqladminV1beta4 value: $value');
  }
}

