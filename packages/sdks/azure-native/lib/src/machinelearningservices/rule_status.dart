import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of a managed network Outbound Rule of a machine learning workspace.
enum RuleStatus implements pulumi.PulumiEnum<String> {
  inactive("Inactive"),
  active("Active"),
  provisioning("Provisioning"),
  deleting("Deleting"),
  failed("Failed");

  const RuleStatus(this.wireValue);
  @override
  final String wireValue;

  static RuleStatus fromValue(String value) {
    for (final item in RuleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleStatus value: $value');
  }
}
