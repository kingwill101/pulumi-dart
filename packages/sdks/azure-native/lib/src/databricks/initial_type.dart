/// Defines the initial type of the default catalog. Possible values (case-insensitive):  HiveMetastore, UnityCatalog
enum InitialType {
  valueHiveMetastore("HiveMetastore"),
  valueUnityCatalog("UnityCatalog");

  const InitialType(this.wireValue);
  final String wireValue;

  static InitialType fromValue(String value) {
    for (final item in InitialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InitialType value: $value');
  }
}

