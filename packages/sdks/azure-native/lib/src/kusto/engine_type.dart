import 'package:pulumi/pulumi.dart' as pulumi;

/// The engine type
enum EngineType implements pulumi.PulumiEnum<String> {
  valueV2("V2"),
  valueV3("V3");

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
