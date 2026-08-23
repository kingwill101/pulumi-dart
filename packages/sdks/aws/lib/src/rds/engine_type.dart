enum EngineType {
  aurora("aurora"),
  auroraMysql("aurora-mysql"),
  auroraPostgresql("aurora-postgresql"),
  mysql("mysql"),
  postgres("postgres");

  const EngineType(this.wireValue);
  final String wireValue;

  static EngineType fromValue(String value) {
    for (final item in EngineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineType value: $value');
  }
}
