/// Gets or Sets Default Storage Firewall configuration information. Not allowed in Serverless ComputeMode workspace.
enum DefaultStorageFirewall {
  disabled("Disabled"),
  enabled("Enabled");

  const DefaultStorageFirewall(this.wireValue);
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
