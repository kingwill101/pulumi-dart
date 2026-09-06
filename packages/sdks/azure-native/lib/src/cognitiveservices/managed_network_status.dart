import 'package:pulumi/pulumi.dart' as pulumi;

/// Status for the managed network of a cognitive services account.
enum ManagedNetworkStatus implements pulumi.PulumiEnum<String> {
  inactive("Inactive"),
  active("Active");

  const ManagedNetworkStatus(this.wireValue);
  @override
  final String wireValue;

  static ManagedNetworkStatus fromValue(String value) {
    for (final item in ManagedNetworkStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedNetworkStatus value: $value');
  }
}
