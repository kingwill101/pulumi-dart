import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of a managed cluster SKU.
enum ManagedClusterSKUName implements pulumi.PulumiEnum<String> {
  valueBase("Base"),
  valueAutomatic("Automatic");

  const ManagedClusterSKUName(this.wireValue);
  @override
  final String wireValue;

  static ManagedClusterSKUName fromValue(String value) {
    for (final item in ManagedClusterSKUName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedClusterSKUName value: $value');
  }
}
