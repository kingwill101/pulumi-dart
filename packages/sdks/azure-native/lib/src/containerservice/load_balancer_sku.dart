/// The load balancer sku for the managed cluster. The default is 'standard'. See [Azure Load Balancer SKUs](https://docs.microsoft.com/azure/load-balancer/skus) for more information about the differences between load balancer SKUs.
enum LoadBalancerSku {
  valueStandard("standard"),
  valueBasic("basic");

  const LoadBalancerSku(this.wireValue);
  final String wireValue;

  static LoadBalancerSku fromValue(String value) {
    for (final item in LoadBalancerSku.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoadBalancerSku value: $value');
  }
}

