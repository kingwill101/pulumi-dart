import 'package:pulumi/pulumi.dart' as pulumi;

/// State of provisioning of the AzureBareMetalStorageInstance
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueAccepted("Accepted"),
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueFailed("Failed"),
  valueSucceeded("Succeeded"),
  valueDeleting("Deleting"),
  valueCanceled("Canceled"),
  valueMigrating("Migrating");

  const ProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static ProvisioningState fromValue(String value) {
    for (final item in ProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningState value: $value');
  }
}
