import 'package:pulumi/pulumi.dart' as pulumi;

/// Category of a managed network Outbound Rule of a machine learning workspace.
enum RuleCategory implements pulumi.PulumiEnum<String> {
  required("Required"),
  recommended("Recommended"),
  userDefined("UserDefined"),
  dependency("Dependency");

  const RuleCategory(this.wireValue);
  @override
  final String wireValue;

  static RuleCategory fromValue(String value) {
    for (final item in RuleCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleCategory value: $value');
  }
}
