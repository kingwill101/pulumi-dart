import 'package:pulumi/pulumi.dart' as pulumi;

/// Property generatedRulesType
enum RulesSourceListGeneratedRulesType implements pulumi.PulumiEnum<String> {
  aLLOWLIST("ALLOWLIST"),
  dENYLIST("DENYLIST");

  const RulesSourceListGeneratedRulesType(this.wireValue);
  @override
  final String wireValue;

  static RulesSourceListGeneratedRulesType fromValue(String value) {
    for (final item in RulesSourceListGeneratedRulesType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RulesSourceListGeneratedRulesType value: $value');
  }
}
