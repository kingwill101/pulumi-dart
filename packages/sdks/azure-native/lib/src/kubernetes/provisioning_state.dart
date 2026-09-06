import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning state of the connected cluster resource.
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueProvisioning("Provisioning"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueAccepted("Accepted");

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
