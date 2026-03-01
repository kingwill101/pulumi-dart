/// Account hosting model.
enum HostingModel {
  valueWeb("Web"),
  valueConnectedContainer("ConnectedContainer"),
  valueDisconnectedContainer("DisconnectedContainer"),
  valueProvisionedWeb("ProvisionedWeb");

  const HostingModel(this.value);
  final String value;

  static HostingModel fromValue(String value) {
    for (final item in HostingModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostingModel value: $value');
  }
}

