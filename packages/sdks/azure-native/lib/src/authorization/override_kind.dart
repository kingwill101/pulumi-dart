import 'package:pulumi/pulumi.dart' as pulumi;

/// The override kind.
enum OverrideKind implements pulumi.PulumiEnum<String> {
  valuePolicyEffect("policyEffect"),
  valueDefinitionVersion("definitionVersion");

  const OverrideKind(this.wireValue);
  @override
  final String wireValue;

  static OverrideKind fromValue(String value) {
    for (final item in OverrideKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OverrideKind value: $value');
  }
}
