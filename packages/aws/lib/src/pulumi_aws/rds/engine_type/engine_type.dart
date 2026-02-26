enum EngineType {
  aurora("aurora"),
  auroraMysql("aurora-mysql"),
  auroraPostgresql("aurora-postgresql"),
  mysql("mysql"),
  postgres("postgres");

  const EngineType(this.value);
  final String value;

  static EngineType fromValue(String value) {
    for (final item in EngineType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineType value: $value');
  }
}
