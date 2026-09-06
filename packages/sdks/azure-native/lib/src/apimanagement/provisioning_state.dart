import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning state.
enum ProvisioningState implements pulumi.PulumiEnum<String> {
  valueCreated("created");

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
