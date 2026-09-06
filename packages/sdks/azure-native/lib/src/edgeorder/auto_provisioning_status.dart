import 'package:pulumi/pulumi.dart' as pulumi;

/// Auto Provisioning Details.
enum AutoProvisioningStatus implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const AutoProvisioningStatus(this.wireValue);
  @override
  final String wireValue;

  static AutoProvisioningStatus fromValue(String value) {
    for (final item in AutoProvisioningStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProvisioningStatus value: $value');
  }
}
