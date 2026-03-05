/// NetworkPolicy - Network policy used for building Kubernetes network. Possible values include: 'calico', 'flannel'. Default is 'calico'
enum NetworkPolicy {
  valueCalico("calico"),
  valueFlannel("flannel");

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

