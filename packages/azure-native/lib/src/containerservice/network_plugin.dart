/// Network plugin used for building the Kubernetes network.
enum NetworkPlugin {
  valueAzure("azure"),
  valueKubenet("kubenet"),
  valueNone("none");

  const NetworkPlugin(this.value);
  final String value;

  static NetworkPlugin fromValue(String value) {
    for (final item in NetworkPlugin.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPlugin value: $value');
  }
}

