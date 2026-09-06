import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning state of the monitoring tag rules.
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueAccepted("Accepted"),
  valueCreating("Creating"),
  valueUpdating("Updating"),
  valueDeleting("Deleting"),
  valueSucceeded("Succeeded"),
  valueFailed("Failed"),
  valueCanceled("Canceled"),
  valueDeleted("Deleted"),
  valueNotSpecified("NotSpecified");

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
