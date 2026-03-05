/// Network dataplane used in the Kubernetes cluster.
enum NetworkDataplane {
  valueAzure("azure"),
  valueCilium("cilium");

  const NetworkDataplane(this.wireValue);
  final String wireValue;

  static NetworkDataplane fromValue(String value) {
    for (final item in NetworkDataplane.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkDataplane value: $value');
  }
}

