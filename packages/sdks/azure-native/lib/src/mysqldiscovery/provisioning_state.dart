import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the provisioning state.
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueCreating("Creating"),
  valueDeleting("Deleting"),
  valueUpdating("Updating");

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
