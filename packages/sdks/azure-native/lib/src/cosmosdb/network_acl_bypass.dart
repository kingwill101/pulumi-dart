/// Indicates what services are allowed to bypass firewall checks.
enum NetworkAclBypass {
  valueNone("None"),
  valueAzureServices("AzureServices");

  const NetworkAclBypass(this.wireValue);
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

