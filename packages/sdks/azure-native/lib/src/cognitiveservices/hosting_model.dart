import 'package:pulumi/pulumi.dart' as pulumi;

/// Account hosting model.
enum HostingModel implements pulumi.PulumiEnum<String> {
  valueWeb("Web"),
  valueConnectedContainer("ConnectedContainer"),
  valueDisconnectedContainer("DisconnectedContainer"),
  valueProvisionedWeb("ProvisionedWeb");

  const HostingModel(this.wireValue);
  @override
  final String wireValue;

  static HostingModel fromValue(String value) {
    for (final item in HostingModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostingModel value: $value');
  }
}
