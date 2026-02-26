enum RouterNatEndpointTypesItem3 {
  endpointTypeManagedProxyLb("ENDPOINT_TYPE_MANAGED_PROXY_LB"),
  endpointTypeSwg("ENDPOINT_TYPE_SWG"),
  endpointTypeVm("ENDPOINT_TYPE_VM");

  const RouterNatEndpointTypesItem3(this.value);
  final String value;

  static RouterNatEndpointTypesItem3 fromValue(String value) {
    for (final item in RouterNatEndpointTypesItem3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatEndpointTypesItem3 value: $value');
  }
}
