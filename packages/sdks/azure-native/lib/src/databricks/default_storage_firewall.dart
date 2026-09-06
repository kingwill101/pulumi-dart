import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or Sets Default Storage Firewall configuration information. Not allowed in Serverless ComputeMode workspace.
enum DefaultStorageFirewall implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const DefaultStorageFirewall(this.wireValue);
  @override
  final String wireValue;

  static DefaultStorageFirewall fromValue(String value) {
    for (final item in DefaultStorageFirewall.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultStorageFirewall value: $value');
  }
}
