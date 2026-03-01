/// Network dataplane used in the Kubernetes cluster.
enum NetworkDataplane {
  valueAzure("azure"),
  valueCilium("cilium");

  const NetworkDataplane(this.value);
  final String value;

  static NetworkDataplane fromValue(String value) {
    for (final item in NetworkDataplane.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkDataplane value: $value');
  }
}

