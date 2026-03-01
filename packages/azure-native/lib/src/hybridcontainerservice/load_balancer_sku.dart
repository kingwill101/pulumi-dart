/// LoadBalancerSku - The load balancer sku for the provisioned cluster. Possible values: 'unstacked-haproxy', 'stacked-kube-vip', 'stacked-metallb', 'unmanaged'. The default is 'unmanaged'.
enum LoadBalancerSku {
  valueUnstackedHaproxy("unstacked-haproxy"),
  valueStackedKubeVip("stacked-kube-vip"),
  valueStackedMetallb("stacked-metallb"),
  valueUnmanaged("unmanaged");

  const LoadBalancerSku(this.value);
  final String value;

  static LoadBalancerSku fromValue(String value) {
    for (final item in LoadBalancerSku.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerSku value: $value');
  }
}

