import 'package:pulumi/pulumi.dart' as pulumi;

/// Policy type
enum ReconciliationPolicies implements pulumi.PulumiEnum<String> {
  periodic("periodic");

  const ReconciliationPolicies(this.wireValue);
  @override
  final String wireValue;

  static ReconciliationPolicies fromValue(String value) {
    for (final item in ReconciliationPolicies.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReconciliationPolicies value: $value');
  }
}
