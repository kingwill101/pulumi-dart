/// The pool management type of the session pool.
enum PoolManagementType {
  valueManual("Manual"),
  valueDynamic("Dynamic");

  const PoolManagementType(this.value);
  final String value;

  static PoolManagementType fromValue(String value) {
    for (final item in PoolManagementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PoolManagementType value: $value');
  }
}

