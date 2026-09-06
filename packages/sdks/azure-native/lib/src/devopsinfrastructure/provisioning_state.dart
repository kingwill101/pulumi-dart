import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of the current operation.
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  succeeded("Succeeded"),
  failed("Failed"),
  canceled("Canceled"),
  provisioning("Provisioning"),
  updating("Updating"),
  deleting("Deleting"),
  accepted("Accepted");

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
