import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates what services are allowed to bypass firewall checks.
enum NetworkAclBypass implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueAzureServices("AzureServices");

  const NetworkAclBypass(this.wireValue);
  @override
  final String wireValue;

  static NetworkAclBypass fromValue(String value) {
    for (final item in NetworkAclBypass.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkAclBypass value: $value');
  }
}
