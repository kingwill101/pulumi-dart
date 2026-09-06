import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether or not to restrict outbound network access.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
enum ClusterNetworkAccessFlag implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ClusterNetworkAccessFlag(this.wireValue);
  @override
  final String wireValue;

  static ClusterNetworkAccessFlag fromValue(String value) {
    for (final item in ClusterNetworkAccessFlag.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterNetworkAccessFlag value: $value');
  }
}
