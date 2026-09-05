import 'package:pulumi/pulumi.dart' as pulumi;

enum EngineType implements pulumi.PulumiEnum<String> {
  aurora("aurora"),
  auroraMysql("aurora-mysql"),
  auroraPostgresql("aurora-postgresql"),
  mysql("mysql"),
  postgres("postgres");

  const EngineType(this.wireValue);
  @override
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
