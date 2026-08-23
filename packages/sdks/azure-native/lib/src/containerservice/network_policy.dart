/// Network policy used for building the Kubernetes network.
enum NetworkPolicy {
  valueNone("none"),
  valueCalico("calico"),
  valueAzure("azure"),
  valueCilium("cilium");

  const NetworkPolicy(this.wireValue);
  final String wireValue;

  static NetworkPolicy fromValue(String value) {
    for (final item in NetworkPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPolicy value: $value');
  }
}
