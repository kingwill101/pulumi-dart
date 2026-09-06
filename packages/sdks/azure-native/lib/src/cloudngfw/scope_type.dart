import 'package:pulumi/pulumi.dart' as pulumi;

/// Rulestack Type
enum ScopeType implements pulumi.PulumiEnum<String> {
  valueLOCAL("LOCAL"),
  valueGLOBAL("GLOBAL");

  const ScopeType(this.wireValue);
  @override
  final String wireValue;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}
