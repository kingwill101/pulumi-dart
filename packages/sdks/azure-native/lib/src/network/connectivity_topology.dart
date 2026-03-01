/// Connectivity topology type.
enum ConnectivityTopology {
  valueHubAndSpoke("HubAndSpoke"),
  valueMesh("Mesh");

  const ConnectivityTopology(this.value);
  final String value;

  static ConnectivityTopology fromValue(String value) {
    for (final item in ConnectivityTopology.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectivityTopology value: $value');
  }
}

