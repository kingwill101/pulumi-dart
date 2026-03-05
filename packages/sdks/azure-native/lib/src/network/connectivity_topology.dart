/// Connectivity topology type.
enum ConnectivityTopology {
  valueHubAndSpoke("HubAndSpoke"),
  valueMesh("Mesh");

  const ConnectivityTopology(this.wireValue);
  final String wireValue;

  static ConnectivityTopology fromValue(String value) {
    for (final item in ConnectivityTopology.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectivityTopology value: $value');
  }
}

