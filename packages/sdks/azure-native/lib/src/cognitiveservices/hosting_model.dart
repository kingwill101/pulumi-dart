/// Account hosting model.
enum HostingModel {
  valueWeb("Web"),
  valueConnectedContainer("ConnectedContainer"),
  valueDisconnectedContainer("DisconnectedContainer"),
  valueProvisionedWeb("ProvisionedWeb");

  const HostingModel(this.wireValue);
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

