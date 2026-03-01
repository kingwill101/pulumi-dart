/// NetworkPolicy - Network policy used for building Kubernetes network. Possible values include: 'calico', 'flannel'. Default is 'calico'
enum NetworkPolicy {
  valueCalico("calico"),
  valueFlannel("flannel");

  const NetworkPolicy(this.value);
  final String value;

  static NetworkPolicy fromValue(String value) {
    for (final item in NetworkPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPolicy value: $value');
  }
}

