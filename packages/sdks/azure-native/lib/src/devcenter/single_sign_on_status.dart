import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether Dev Boxes in this pool are created with single sign on enabled. The also requires that single sign on be enabled on the tenant.
enum SingleSignOnStatus implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const SingleSignOnStatus(this.wireValue);
  @override
  final String wireValue;

  static SingleSignOnStatus fromValue(String value) {
    for (final item in SingleSignOnStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleSignOnStatus value: $value');
  }
}
