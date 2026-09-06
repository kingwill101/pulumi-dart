import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning state of the Private Endpoint Connection.
enum ResourceProvisioningState implements pulumi.PulumiEnum<String> {
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueCanceled("Canceled"),
  valueFailed("Failed");

  const ResourceProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static ResourceProvisioningState fromValue(String value) {
    for (final item in ResourceProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProvisioningState value: $value');
  }
}
